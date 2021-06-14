import 'package:flutter/material.dart';
import 'alumno.dart';
import 'aspirante.dart';
import 'docente.dart';
import 'concemas.dart';
import 'creditos.dart';
import 'bienvenida.dart';

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int _selectDrawerItem = 0;
  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return Bienvenida();
      case 1:
        return Alumno();
      case 2:
        return Aspirante();
      case 3:
        return Docente();
      case 4:
        return Conocemas();
      case 5:
        return Creditos();
    }
  }

  _onSelectItem(int pos) {
    setState(() {
      _selectDrawerItem = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TESE APP"),
      ),
      drawer: Drawer(
          child: ListView(children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('BIENVENIDO'),
          accountEmail: Text('MENU'),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.black12,
            child: Text(
              'T',
              style: TextStyle(fontSize: 40.0),
            ),
          ),
        ),
        ListTile(
            title: Text('INICIO'),
            selected: (0 == _selectDrawerItem),
            leading: Icon(Icons.insert_link_rounded),
            onTap: () {
              Navigator.of(context).pop();
              _onSelectItem(0);
            }),
        ListTile(
            title: Text('ALUMNO'),
            selected: (0 == _selectDrawerItem),
            leading: Icon(Icons.person_pin_sharp),
            onTap: () {
              Navigator.of(context).pop();
              _onSelectItem(0);
            }),
        ListTile(
            title: Text('ASPIRANTE'),
            selected: (1 == _selectDrawerItem),
            leading: Icon(Icons.person_add),
            onTap: () {
              Navigator.of(context).pop();
              _onSelectItem(1);
            }),
        ListTile(
            title: Text('DOCENTE'),
            selected: (2 == _selectDrawerItem),
            leading: Icon(Icons.person_add_alt_1),
            onTap: () {
              Navigator.of(context).pop();
              _onSelectItem(2);
            }),
        ListTile(
            title: Text('CONOCE MÁS'),
            selected: (3 == _selectDrawerItem),
            leading: Icon(Icons.more),
            onTap: () {
              Navigator.of(context).pop();
              _onSelectItem(3);
            }),
        Divider(),
        ListTile(
            title: Text('CREDITOS'),
            selected: (4 == _selectDrawerItem),
            leading: Icon(Icons.person_pin_rounded),
            onTap: () {
              Navigator.of(context).pop();
              _onSelectItem(4);
            }),
      ])),
      body: _getDrawerItemWidget(_selectDrawerItem),
    );
  }
}
