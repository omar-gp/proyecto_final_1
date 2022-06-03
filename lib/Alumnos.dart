import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Alumnos extends StatelessWidget {

  launchURL(String url) async{
    if (await canLaunch(url)){
      await launch(url);
    } else{
      throw 'No se pudo abrir $url';
    }
  }
  @override
  Widget build(BuildContext context) => Scaffold(

      appBar: AppBar(
        title: Text('Alumnos'),
        centerTitle: true,
        backgroundColor: Color(0xFF0033FF),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  top: 30.0,
                  left: 25.0,
                  right: 10.0
              ),
            ),
            const Text("Alumnos",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 39
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                    top: 30.0,
                    left: 25.0,
                    right: 10.0
                ),
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                  onPressed: ()  {
                    const url ='https://www.dgae.unam.mx/calendarios_escolares.html';
                    launchURL(url);
                  },
                  color: Color(0xFFF5A200),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))
                  ),
                  child:

                      Text(
                        "Calendario Escolar",
                        style: TextStyle(

                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Color(0xFFFFFFFF),

                        ),
                      ),


                )
            ),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: 8.0,
                    left: 25.0,
                    right: 10.0
                ),
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                  onPressed: () {
                    const url ='http://ingenieria.aragon.unam.mx/ico/alumnos/horarios_clase08.rb';
                    launchURL(url);
                  },
                  color: Color(0xFFF5A200),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))
                  ),
                  child:

                  Text(
                    "Horarios de Clase \n      (Plan 2008)",
                    style: TextStyle(

                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color(0xFFFFFFFF),

                    ),
                  ),


                )
            ),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: 8.0,
                    left: 25.0,
                    right: 10.0
                ),
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                  onPressed: () {
                    const url ='http://ingenieria.aragon.unam.mx/ico/alumnos/horarios_clase20.rb';
                    launchURL(url);
                  },
                  color: Color(0xFFF5A200),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))
                  ),
                  child:

                  Text(
                    "Horarios de Clase \n      (Plan 2020)",
                    style: TextStyle(

                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color(0xFFFFFFFF),

                    ),
                  ),


                )
            ),
            Container(
                margin: EdgeInsets.only(
                    top: 8.0,
                    left: 25.0,
                    right: 10.0
                ),
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                  onPressed: () {
                    const url ='http://ingenieria.aragon.unam.mx/ico/alumnos/examenes_extraordinarios.rb';
                    launchURL(url);
                  },
                  color: Color(0xFFF5A200),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))
                  ),
                  child:

                  Text(
                    "Exámenes Extraordinarios",
                    style: TextStyle(

                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color(0xFFFFFFFF),

                    ),
                  ),


                )
            ),
            Container(
                margin: EdgeInsets.only(
                    top: 8.0,
                    left: 25.0,
                    right: 10.0
                ),
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                  onPressed: () {
                    const url ='https://www.aragon.unam.mx/evaluacion1.1/Login.php';
                    launchURL(url);
                  },
                  color: Color(0xFFF5A200),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))
                  ),
                  child:

                  Text(
                    "Evaluación de Profesores",
                    style: TextStyle(

                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color(0xFFFFFFFF),

                    ),
                  ),


                )
            ),
            Container(
                margin: EdgeInsets.only(
                    top: 8.0,
                    left: 25.0,
                    right: 10.0
                ),
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                  onPressed: () {
                    const url ='http://ingenieria.aragon.unam.mx/diplomados/';
                    launchURL(url);
                  },
                  color: Color(0xFFF5A200),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))
                  ),
                  child:

                  Text(
                    "Diplomados",
                    style: TextStyle(

                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color(0xFFFFFFFF),

                    ),
                  ),


                )
            ),
            Container(
                margin: EdgeInsets.only(
                    top: 8.0,
                    left: 25.0,
                    right: 10.0
                ),
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                  onPressed: () {
                    const url ='https://www.aragon.unam.mx/fes-aragon/#!/cise/servicio-social';
                    launchURL(url);
                  },
                  color: Color(0xFFF5A200),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))
                  ),
                  child:

                  Text(
                    "Servicio Social",
                    style: TextStyle(

                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color(0xFFFFFFFF),

                    ),
                  ),


                )
            ),
            Container(
                margin: EdgeInsets.only(
                    top: 8.0,
                    left: 25.0,
                    right: 10.0
                ),
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                  onPressed: () {
                    const url ='https://www.becarios.unam.mx/Portal2018/';
                    launchURL(url);

                  },
                  color: Color(0xFFF5A200),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))
                  ),
                  child:

                  Text(
                    "Becas",
                    style: TextStyle(

                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color(0xFFFFFFFF),

                    ),
                  ),


                )
            ),






          ],
        ),

      )
  );
}