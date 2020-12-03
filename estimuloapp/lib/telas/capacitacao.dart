import 'package:flutter/material.dart';

import 'aulas.dart';
import './drawer.dart';

class ModuloDetalhe extends StatelessWidget {
  String imagemURL;
  String textoModulo;
  ModuloDetalhe(String imagemURL, String textoModulo) {
    this.imagemURL = imagemURL;
    this.textoModulo = textoModulo;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            radius: 45.0,
            backgroundImage: NetworkImage(imagemURL),
          ),
          SizedBox(width: 20),
          Text(
            textoModulo,
            overflow: TextOverflow.visible,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class Capacitacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trilhas de capacitação'),
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Container(
            margin: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Aulas("financeiro")));
                  },
                  child: Card(
                    color: Color(0xAA7884FA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ModuloDetalhe(
                        'https://cdn.pixabay.com/photo/2016/10/09/19/19/coins-1726618_960_720.jpg',
                        'Módulo financeiro'),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Aulas("marketing")));
                  },
                  child: Card(
                    color: Color(0xAA3CFAB9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ModuloDetalhe(
                        'https://cdn.pixabay.com/photo/2016/06/09/20/38/woman-1446557_960_720.jpg',
                        'Módulo comunicação\ne marketing'),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Aulas("tecnologia")));
                  },
                  child: Card(
                    color: Color(0xAAFA8485),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ModuloDetalhe(
                        'https://cdn.pixabay.com/photo/2015/02/02/11/09/office-620822_960_720.jpg',
                        'Módulo tecnologia e\ninovação'),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Aulas("rh")));
                  },
                  child: Card(
                    color: Color(0xAAFAE288),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ModuloDetalhe(
                        'https://cdn.pixabay.com/photo/2016/03/09/09/22/workplace-1245776_960_720.jpg',
                        'Módulo gestão de RH'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      drawer: DrawerApp(),
    );
  }
}
