import 'package:flutter/material.dart';

//Telas
import './telas/Inicio.dart';
import './telas/login.dart';
import './telas/cadastro.dart';
import './telas/capacitacao.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Inicio(),
          '/login': (context) => Login(),
          '/cadastro': (context) => Cadastro(),
          '/capacitacao': (context) => Capacitacao(),
          //'/feedback': (context) => Feedback(),
        },
      ),
    );