import 'package:flutter/material.dart';



class QuienesSomos extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(

    appBar: AppBar(
      title: Text('Quienes somos'),
      centerTitle: true,
      backgroundColor: Color(0xFF0033FF),
    ),
    body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: 20.0,
              left: 25.0,
              right: 10.0
            ),
          ),
          const Text("Misión",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 39
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
                top: 17.0,
                left: 20.0,
                right: 15.0
            ),
            child: const Text("Formar profesionales con un gran espíritu Universitario, comprometidos con el crecimiento del país, con capacidades para encontrar soluciones innovadoras y con un alto nivel de conocimientos en matemáticas, programación e ingeniería de software, procesamiento de la información, arquitectura de computadoras, redes, seguridad y control.",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.justify,
            ),
          ),

          Container(
            margin: EdgeInsets.only(
                top: 30.0,
                left: 25.0,
                right: 10.0
            ),
          ),
          const Text("Visión",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 39
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
                top: 17.0,
                left: 20.0,
                right: 15.0
            ),
            child: const Text("Ser una carrera de vanguardia que asegure la actualización constante de su planta docente, infraestructura y planes de estudio, para formar Ingenieros en Computación capaces de responder a los cambios que demande el país.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 50.0,
                left: 25.0,
                right: 10.0
            ),
          ),
          const Text("Objetivo",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 39
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
                top: 17.0,
                left: 20.0,
                right: 15.0
            ),
            child: const Text("Formar profesionales en Ingeniería en Computación líderes, con conocimientos teóricos y prácticos útiles para la solución de problemas computacionales que la sociedad demanda, comprometidos con las necesidades y desarrollo del país.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 50.0,
                left: 25.0,
                right: 10.0
            ),
          ),
          const Text("Valores",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 39
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
                top: 25.0,
                left: 20.0,
                right: 15.0
            ),
            child: const Text("Identificación plena de los valores de la UNAM como los valores de la FES Aragón.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
                top: 17.0,
                left: 20.0,
                right: 15.0,
                bottom: 40
            ),

          ),



        ],
      ),
      
    )
  );
}