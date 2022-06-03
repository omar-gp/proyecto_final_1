import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Egresados extends StatelessWidget {

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
        title: Text('Egresados'),
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
            const Text("Egresados",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 39
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                    top: 110.0,
                    left: 25.0,
                    right: 10.0
                ),
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                  onPressed: ()  {
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
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: 50.0,
                    left: 25.0,
                    right: 10.0
                ),
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                  onPressed: () {
                    const url ='http://ingenieria.aragon.unam.mx/egresados/modalidades.rb';
                    launchURL(url);
                  },
                  color: Color(0xFFF5A200),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))
                  ),
                  child:

                  Text(
                    "Modalidades de \n      titulacion",
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
                    top: 50.0,
                    left: 25.0,
                    right: 10.0
                ),
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                  onPressed: () {
                    const url ='http://ingenieria.aragon.unam.mx/sse/';
                    launchURL(url);
                  },
                  color: Color(0xFFF5A200),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))
                  ),
                  child:

                  Text(
                    "Seguimiento a \n    egresados",
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