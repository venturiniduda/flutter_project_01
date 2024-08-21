// ignore_for_file: prefer_const_constructors

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scaffold Example'),
        ),
        body: Center(
          child: Text('Corpo do Aplicativo'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Adicionar ação aqui
            //   final snackBar = SnackBar(
            //     content: Text('Snackbar de Exemplo'),
            //     duration: Duration(seconds: 5),
            //   );
            //   // Exibe o snackbar na tela
            //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Icon(Icons.add),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('Menu'),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  // Adicionar ação aqui
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  // Adicionar ação aqui
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          selectedItemColor: Colors.amber[800],
          onTap: (int index) {
            // Adicionar ação aqui
          },
        ),
      ),
    );
  }
}
