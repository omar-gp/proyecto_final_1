import 'package:flutter/material.dart';
import 'package:proyecto_final/NavigationDrawerWidget.dart';
import 'package:proyecto_final/body.dart';



void main () => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'AppIco',
    theme: ThemeData(
      appBarTheme: AppBarTheme(
        color: const Color(0xFFF5A200)
      )
    ),


    home: Scaffold(
      drawer: NavigationDrawerWidget(),
      // endDrawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text("Ico Fes Aragon",
          style: TextStyle(
              fontSize: 22
          ),),
      ),
      body: InicioAppIco(),
    )
  );
}



