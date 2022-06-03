
import 'package:flutter/material.dart';

class imagen_tarjeta extends StatelessWidget{

  String url = "";

  imagen_tarjeta(this.url);

  Widget build(BuildContext context) {

    final tarjeta = Container(
      height: 10.0,
      width: 380.0,
      margin: EdgeInsets.only(
          top: 10.0,
          left: 17
      ),

      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(url)
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,


      ),
    );

    return tarjeta;

  }

}

class InicioAppIco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final carrusel =
    Container(
      alignment: Alignment.topCenter,
      height: 250,
      child: ListView(

        padding: EdgeInsets.all(2.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          imagen_tarjeta("http://ingenieria.aragon.unam.mx/files/noticias/2021-1/Evalua.jpeg"),

        ],
      ),

    );
    final Espacio = Container(
      margin: EdgeInsets.only(
          top: 2.0,
          left: 38.0,
          right: 10.0
      ),
    );

    final InfoJefes = Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(
          top: 120.0,
          left: 70.0,
          right: 1.0
      ),
      child:
        Row(

          children:<Widget>[
            Container(
                child:Text("Ing. Jorge Arturo \nLópez Hernández \n \nJefe de Carrera",
                style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xFF002B59)
                        ),
                )

        ),
        VerticalDivider(
          width: 30,
          thickness: 2,
          color: Color(0xFF000000),
        ),
        Container(
            child:Text("Ing. Ana Claudia \nReyez Cruz \n \nSecretaria Técnica",
              style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0xFF002B59)
              ),
            )

        ),]

      ),


    );








    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          carrusel,
          InfoJefes
        ],
      ),
    );

  }
}