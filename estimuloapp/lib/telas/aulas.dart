import 'package:flutter/material.dart';

import 'video_list.dart';

class Aulas extends StatefulWidget {
  String _trilha;

  Aulas(String trilha) {
    this._trilha = trilha;
  }
  @override
  _AulasState createState() => _AulasState(_trilha);
}

class _AulasState extends State<Aulas> {
  String _trilha;

  _AulasState(String trilha) {
    this._trilha = trilha;
  }

  String recuperarTitulo(String trilha) {
    switch (trilha) {
      case "financeiro":
        return "Módulo financeiro";
      case "marketing":
        return "Módulo marketing e comunicação";
      case "tecnologia":
        return "Módulo tecnologia e inovação";
      case "rh":
        return "Módulo gestão de RH";
      default:
        return "Trilha de capacitação";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(recuperarTitulo(_trilha)),
        ),
        body: VideoList(_trilha));
  }
}
