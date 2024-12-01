from flask import Flask, jsonify
from flask_mysqldb import MySQL
from config import config
from flask_cors import CORS
from datetime import date
from collections import OrderedDict

app = Flask(__name__)
CORS(app)


conexion = MySQL(app)


@app.route('/')
def home():
    return ({'message': 'Hello, World!'})
@app.route('/heroe/')
def heroes():
    cursor = conexion.connection.cursor()
    cursor.execute("SELECT id, nombre FROM heroes")
    result = cursor.fetchall()
    heroes = []
    for fila in result:
        heroe = {'id': fila[0], 'nombre': fila[1]}
        heroes.append(heroe)
    return jsonify({'heroes': heroes})


@app.route('/heroe/<nombre>')
def heroe(nombre):
    cursor = conexion.connection.cursor()
    cursor.execute("SELECT heroes.*, equipos.nombre  FROM heroes LEFT JOIN equipos ON heroes.equipo = equipos.id WHERE heroes.nombre = %s;", (nombre,))
    result = cursor.fetchone()

    cursor.execute("SELECT nombre FROM armas where id_poseedor=%s", (result[0],))
    result2 = cursor.fetchall()
    
    cursor.execute("SELECT peliculas_series.nombre from heroe_pelicula JOIN peliculas_series ON heroe_pelicula.id_pelicula = peliculas_series.id WHERE heroe_pelicula.id_heroe = %s", (result[0],))
    result3 = cursor.fetchall()
    
    if len(result2) == 0:
        result2 = ["No tiene armas"]

    if len(result3) == 0:
        result3 = ["No tiene Peliculas"]
    if result[10] is None:
            return jsonify(OrderedDict([
        ('nombre', result[1]),
        ('imagen', result[8]),
        ('descripcion', OrderedDict([
            ('identidad-secreta', result[2]),
            ('poderes', result[3]),
            ('primera-aparicion', result[4].strftime("%d/%m/%Y")),
            ('universo', result[5]),
            ('biografia', result[6]),
            ('alineacion', result[7]),
            ('equipo', 'No tiene equipo'),
            ('armas', result2[0]),
            ('peliculas', result3[0])
        ]))
    ]))
    
    
    return jsonify(OrderedDict([
        ('nombre', result[1]),
        ('imagen', result[8]),
        ('descripcion', OrderedDict([
            ('identidad-secreta', result[2]),
            ('poderes', result[3]),
            ('primera-aparicion', result[4].strftime("%d/%m/%Y")),
            ('universo', result[5]),
            ('biografia', result[6]),
            ('alineacion', result[7]),
            ('equipo', result[10]),
            ('armas', result2),
            ('peliculas', result3)
        ]))
    ]))



@app.route('/equipos/')
def equipos():
    cursor = conexion.connection.cursor()
    cursor.execute("SELECT * FROM equipos")
    result = cursor.fetchall()


    equipos = []
    for fila in result:
        cursor.execute('SELECT heroes.nombre FROM heroes JOIN equipos ON equipos.id = heroes.equipo where heroes.equipo=%s', (fila[0],))
        result2 = cursor.fetchall()
        integrantes=[]
        for i in result2:
            integrantes.append(i[0])
        cursor.execute('SELECT nombre FROM locaciones where id=%s', (fila[3],))
        result3 = cursor.fetchone()

        heroe = { 'nombre': fila[1], 'fecha_creacion': fila[2].strftime("%d/%m/%Y"),'integrantes': integrantes, 'objetivo': fila[4], 'ubicacion': result3}
        equipos.append(heroe)
    return jsonify({'equipos': equipos})


@app.route('/pelicula/')
def peliculas():
    cursor = conexion.connection.cursor()
    cursor.execute("SELECT id, nombre, sinopsis FROM peliculas_series")
    result = cursor.fetchall()
    peliculas = []
    for fila in result:
        pelicula = {'id': fila[0], 'nombre': fila[1], 'sinopsis': fila[2]}
        peliculas.append(pelicula)
    return jsonify({'peliculas': peliculas})

@app.route('/pelicula/<nombre>')
def pelicula(nombre):
    cursor = conexion.connection.cursor()
    cursor.execute("SELECT * FROM peliculas_series WHERE nombre = %s;", (nombre,))
    result = cursor.fetchone()

    cursor.execute('SELECT heroes.nombre, heroes.url_imagen, heroe_pelicula.descripcion_participacion FROM heroes JOIN heroe_pelicula ON heroes.id = heroe_pelicula.id_heroe where heroe_pelicula.id_pelicula=%s', (result[0],))
    result2 = cursor.fetchall()
    personajes = []
    print(result2)
    for fila in result2:
        personaje = {'nombre': fila[0], 'imagen': fila[1], 'descripcion': fila[2]}
        personajes.append(personaje)
    return jsonify({
        'personajes': personajes,
        'nombre': result[1],
        'fecha_estreno': result[2].strftime("%d/%m/%Y"),
        'director_creador': result[3],
        'sinopsis': result[4],
        'duracion': result[5]
        })

if __name__ == '__main__':
    app.config.from_object(config['development'])
    app.run(host='0.0.0.0', port=8000)
