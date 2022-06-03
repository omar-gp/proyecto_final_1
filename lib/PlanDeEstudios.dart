import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PlanDeEstudios extends StatelessWidget {
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
        title: Text('Plan de estudios'),
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
            const Text("Perfil de Ingreso",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 39
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 17.0,
                  left: 20.0,
                  right: 20.0
              ),
              child: const Text("Los alumnos que deseen ingresar a la Licenciatura de Ingeniería en Computación, además de haber cursado el área Físico Matemáticas, o similar en el Bachillerato, es deseable que tengan las siguientes características:",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 10.0,
                  left: 25.0,
                  right: 10.0
              ),
            ),

            Container(
              margin: const EdgeInsets.only(
                  top: 17.0,
                  left: 20.0,
                  right: 20.0
              ),
              child: const Text("∙ Contar con conocimientos básicos y tener gusto y habilidad en matemáticas y física. \n ∙ Facilidad para el análisis de problemas e interés por su solución práctica. \n ∙ Interés por la recopilación de datos y la investigación. \n ∙ Tendencia a la sistematización, constancia y orden en los trabajos emprendidos. \n ∙ Disposición a realizar actividades extra clase como laboratorios, desarrollo de programas, etc.",
                style: TextStyle(fontSize: 17),
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
            const Text("Perfil de Egreso",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 39
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 17.0,
                  left: 20.0,
                  right: 20.0
              ),
              child: const Text("El egresado de la Licenciatura de Ingeniería en Computación cuenta con los conocimientos sólidos en software y hardware, y un manejo fluido de los principios teóricos y de los aspectos prácticos y metodológicos para la configuración, la evaluación, el diseño y el desarrollo de obras y entornos de sistemas computacionales complejos (servicios, telecomunicaciones, arquitecturas y configuración de redes de cómputo y teleproceso, etc.); que le permitan responder a diversas necesidades con soluciones innovadoras (proponiendo metodologías, técnicas y herramientas) en las diferentes áreas con las que interactúa. Puede perfeccionar o reafirmar su orientación y conocimientos mediante especializaciones o posgrado.",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                    top: 40.0,
                    left: 25.0,
                    right: 10.0
                ),
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                  onPressed: () {
                    const url ='http://ingenieria.aragon.unam.mx/estudios/mapa_curricular_vigente.rb';
                    launchURL(url);

                  },
                  color: Color(0xFFF5A200),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))
                  ),
                  child:

                  Text(
                    "Plan Anterior (1279)",
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
                    top: 15.0,
                    left: 25.0,
                    right: 10.0
                ),
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                  onPressed: () {
                    const url ='http://ingenieria.aragon.unam.mx/files/mapa-curricular/Plan_de_Estudios_(2020).pdf';
                    launchURL(url);

                  },
                  color: Color(0xFFF5A200),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))
                  ),
                  child:

                  Text(
                    "Plan Vigente (2119)",
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