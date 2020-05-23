import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'App Fitness',
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
// creamos un arreglo de datos imagenes y nombre ejercicio
  List<Container> listamos = List();
  var arreglox = [
    {"nombre": "Pierna", "imagen": "pierna2.jpg", "deporte": "Trabajo con polea 4 repiticiones de 12"},
    {"nombre": "Pesas", "imagen": "pesas.jpg", "deporte": "Trabajo con pesas...."},
    {"nombre": "Cinta Elastica", "imagen": "cinta.jpg", "deporte": "Trabajo con cinta 4 repeticiones de 15"},
    {"nombre": "Cinta", "imagen": "cinta2.jpg", "deporte": "Trabajo con cinta 2 repeticiones de 15"},
    {"nombre": "Abdomen", "imagen": "abdomen2.jpg", "deporte": "Abdomen alto..."},
    {"nombre": "Peso", "imagen": "peso.jpg", "deporte": "Trabajo pesas de 5kg"},
    {"nombre": "Pierna + Gluteos", "imagen": "pierna2.jpg", "deporte": "Trabajo con cinta 4 repeticiones de 15"},
    {"nombre": "Gluteos", "imagen": "gluteos.jpg", "deporte": "Trabajo con cinta 4 repeticiones de 15"},
    {"nombre": "Mas Gluteos", "imagen": "gluteos2.jpg", "deporte": "Trabajo con cinta 4 repeticiones de 15"},
    {"nombre": "Pierna..", "imagen": "pierna.jpg", "deporte": "Trabajo con cinta 4 repeticiones de 15"},
    {"nombre": "Barra", "imagen": "barra2.jpg", "deporte": "Trabajo con cinta 4 repeticiones de 15"},
    {"nombre": "Rusa", "imagen": "rusa.jpg", "deporte": "Trabajo con cinta 4 repeticiones de 15"},
    {"nombre": "Pierna..", "imagen": "pierna3.jpg", "deporte": "Trabajo con cinta 4 repeticiones de 15"},
    {"nombre": "Cinta Elastica", "imagen": "cinta2.jpg", "deporte": "Trabajo con cinta 4 repeticiones de 15"},
    {"nombre": "Peso z", "imagen": "peso2.jpg", "deporte": "Trabajo con cinta 4 repeticiones de 15"},
    {"nombre": "Mancuernas", "imagen": "mancuernas.jpg", "deporte": "Trabajo con cinta 4 repeticiones de 15"},
    {"nombre": "Estiramiento", "imagen": "estiramiento.jpg", "deporte": "Trabajo con cinta 4 repeticiones de 15"},
    {"nombre": "Otro", "imagen": "otro.png", "deporte": "Fortalece pierna y Gluteos"},
    {"nombre": "Otro+", "imagen": "otro1.png", "deporte": "pierna y Gluteos"},
    {"nombre": "mas Ejercicio", "imagen": "pierna5.png", "deporte": "Fortalece pierna y Gluteos"},
    {"nombre": "barra de 5k", "imagen": "barra.jpg", "deporte": "Trabajo con cinta 4 repeticiones de 15"},
  ];

  _listado() async {
    for (var i = 0; i < arreglox.length; i++) {
      final arregloxyz = arreglox[i];
      final String imagen = arregloxyz["imagen"];

      listamos.add(new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Card(
          child: new Column(
            children: <Widget>[
              new Hero(
                tag: arregloxyz['nombre'],
                child: new Material(
                  child: new InkWell(
                    onTap: () =>
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new Detalle(
                        nombre: arregloxyz['nombre'],
                        imagen: imagen,
                        deporte: arregloxyz['deporte']
                      ),
                    )),
                    child: new Image.asset(
                      "img/$imagen",
                      fit: BoxFit.contain
                    ),
                  ),
                ),
              ),
              new Padding(
                padding: new EdgeInsets.all(3.0),
              ),
              new Text(
                arregloxyz['nombre'],
                style: new TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      ));
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}