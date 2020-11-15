import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() {
    return _CadastroState();
  }
}

class _CadastroState extends State<Cadastro> {
  final TextEditingController razaoController = TextEditingController();
  final TextEditingController numeroController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: Builder(
        builder: (BuildContext context) {
          return ListView(
            shrinkWrap: true,
            children: [
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
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Razão social'),
                        controller: razaoController,
                        validator: (value) {
                          if (value.isEmpty)
                            return 'O campo é obrigatório';
                          else
                            return null;
                        },
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'E-mail'),
                        controller: emailController,
                        validator: (value) {
                          if (value.isEmpty)
                            return 'O campo é obrigatório';
                          else
                            return null;
                        },
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Número de telefone ou celular'),
                        controller: numeroController,
                        validator: (value) {
                          if (value.isEmpty)
                            return 'O campo é obrigatório';
                          else
                            return null;
                        },
                      ),
                      SizedBox(height: 30),
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
                      Center(
                        child: RaisedButton(
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              Scaffold.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Efetuando cadastro..."),
                                ),
                              );
                              //sleep(Duration(seconds: 5));
                             // Navigator.pop(context);
                            }
                          },
                          child: Text('Cadastrar',
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
