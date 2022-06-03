import 'package:flutter/material.dart';
import 'package:proyecto_final/QuienesSomos.dart';
import 'package:proyecto_final/PlanDeEstudios.dart';
import 'package:proyecto_final/Alumnos.dart';
import 'package:proyecto_final/Egresados.dart';


class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {



    return Drawer(
      child: Material(
        color: Color.fromRGBO(245, 162, 0, 1.0),
        child: ListView(
          children: <Widget>[

            Container(
              padding: padding,
              child: Column(
                children: [

                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Quienes somos',
                    icon: Icons.account_balance,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Plan de estudios',
                    icon: Icons.work,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Alumnos',
                    icon: Icons.account_circle,
                    onClicked: () => selectedItem(context, 2),
                  ),


                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Egresados',
                    icon: Icons.add_box,
                    onClicked: () => selectedItem(context, 3),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }




  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
          text, style: TextStyle(fontSize: 18,color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => QuienesSomos(),
        ));
        break;

      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PlanDeEstudios(),
        ));
        break;

      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Alumnos(),
        ));
        break;


      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Egresados(),
        ));
        break;

    }
  }
}