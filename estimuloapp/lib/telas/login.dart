import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String validarLogin(String email, String senha) {
    if (email == 'exemplo@email.com') {
      if (senha == '1234') {
        Navigator.pushNamed(context, '/capacitacao');
        return "Login efetuado com sucesso!";
      } else {
        return "Senha inválida.";
      }
    } else {
      return 'Email não cadastrado.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: Builder(
        builder: (BuildContext context) {
          return ListView(
            shrinkWrap: true,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 10),
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        color: Colors.blue,
                        iconSize: 30,
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/logo.png',
                          width: 80,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(height: 30),
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
                      TextFormField(
                        decoration:
                            InputDecoration(labelText: 'E-mail ou celular'),
                        controller: emailController,
                        validator: (value) {
                          if (value.isEmpty)
                            return 'O campo é obrigatório';
                          else
                            return null;
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Senha'),
                        controller: senhaController,
                        obscureText: true,
                        validator: (value) {
                          if (value.isEmpty)
                            return 'O campo é obrigatório';
                          else
                            return null;
                        },
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
                            if (_formKey.currentState.validate()) {
                              Scaffold.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(validarLogin(
                                      emailController.text,
                                      senhaController.text)),
                                ),
                              );
                            }
                          },
                          child: Text('Entrar',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          color: Colors.blue,
                          padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
