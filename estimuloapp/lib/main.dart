//123
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  Cadastro createState() {
    return Cadastro();
  }
}

class Login extends State<Home> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  void validarLogin(String email, String senha) {
    if (email == 'exemplo@email.com') {
      if (senha == '1234') {
        print("Login efetuado com sucesso!");
        Navigator.push(context, null);
      }
    } else {
      print('Email não cadastrado');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: null,
                  color: Colors.blue,
                  iconSize: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 80,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  'Entrar',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 50),
                Text(
                  'Entre com sua conta para obter uma melhor experiência.',
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
                SizedBox(height: 50),
                TextField(
                  decoration: InputDecoration(labelText: 'E-mail ou celular'),
                  controller: emailController,
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(labelText: 'Senha'),
                  controller: senhaController,
                  obscureText: true,
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: null,
                  child: Text('Recuperar minha senha',
                      style: TextStyle(color: Colors.blue)),
                ),
                SizedBox(height: 20),
                Center(
                  child: RaisedButton(
                    onPressed: () {
                      validarLogin(emailController.text, senhaController.text);
                    },
                    child: Text('Entrar',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    color: Colors.blue,
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Cadastro extends State<Home> {
  final TextEditingController razaoController = TextEditingController();
  final TextEditingController numeroController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  void validarLogin(String email, String senha) {
    if (email == 'exemplo@email.com') {
      if (senha == '1234') {
        print("Login efetuado com sucesso!");
        Navigator.push(context, null);
      }
    } else {
      print('Email não cadastrado');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: null,
                  color: Colors.blue,
                  iconSize: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 80,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Cadastrar',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                Text(
                  'Realize seu cadastro de sua empresa.',
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(labelText: 'Razão social'),
                  controller: razaoController,
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(labelText: 'E-mail'),
                  controller: emailController,
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Número de telefone ou celular'),
                  controller: numeroController,
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(labelText: 'Senha'),
                  controller: senhaController,
                  obscureText: true,
                ),
                SizedBox(height: 20),
                Center(
                  child: RaisedButton(
                    onPressed: () {
                      validarLogin(emailController.text, senhaController.text);
                    },
                    child: Text('Cadastrar',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    color: Colors.blue,
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
