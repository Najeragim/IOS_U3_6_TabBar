import 'package:flutter/material.dart';

void main() => runApp(NavegacionApp());

class NavegacionApp extends StatefulWidget {
  @override
  _NavegacionAppState createState() => _NavegacionAppState();
}//Navegacion App

class _NavegacionAppState extends State<NavegacionApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark), home: Principal());
  }
}// Estado de la App

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}//Clase Principal

class _PrincipalState extends State<Principal> with SingleTickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
    );
  }//Iniciar Estado con 5 Tabs

  Widget card(String text) {
    return Card(
      color: Color(0xFF8F5564),
      child: Container(
        height: 200.0,
        width: 200.0,
        child: Center(child: Text(text, textAlign: TextAlign.center,)),
      ),
    );
  }//Tarjeta

  Tab tab(String text, Icon icon) {
    return Tab(
      icon: icon,
      text: text,
    );
  }//Texto e icono

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Najera: Navegación"),
        centerTitle: true,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0.0,
      ),// AppBar
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          card("Página de\nInicio"),
          card("Página de\nMe gusta"),
          card("Página de\nBuscar"),
          card("Página de\nPerfil"),
          card("Página de\nAjustes"),
        ],
      ),
      bottomNavigationBar:TabBar(
        controller: controller,
        isScrollable: true  ,
        tabs: <Widget>[
          tab("Inicio", Icon(Icons.home_rounded)),
          tab("Me Gusta", Icon(Icons.favorite_rounded)),
          tab("Buscar", Icon(Icons.search_rounded)),
          tab("Perfil", Icon(Icons.account_circle_rounded)),
          tab("Config", Icon(Icons.settings_rounded)),
        ],
      ),          
    );//Scaffold
  }//Constructor

}//Clase _PrincipalState


