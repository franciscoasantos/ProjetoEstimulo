import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/capacitacao',
        routes: {
          //'/': (context) => Inicio(),
          '/login': (context) => Login(),
          '/cadastro': (context) => Cadastro(),
          '/capacitacao': (context) => Capacitacao(),
          //'/feedback': (context) => Feedback(),
        },
      ),
    );

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

class Capacitacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.money),
                  text: 'Financeiro',
                ),
                Tab(
                  icon: Icon(Icons.business),
                  text: 'Marketing',
                ),
                Tab(
                  icon: Icon(Icons.computer),
                  text: 'Tecnologia',
                ),
                Tab(
                  icon: Icon(Icons.people),
                  text: 'RH',
                ),
              ],
            ),
            title: Text('Trilhas de capacitação'),
          ),
          body: TabBarView(
            children: [
              Trilhas('financeiro'),
              Trilhas('marketing'),
              Trilhas('tecnologia'),
              Trilhas('rh'),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text(
                    'Estimulo 2020',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text('Trilhas de capacitação'),
                  onTap: () {
                    Navigator.pushNamed(context, '/capacitacao');
                  },
                ),
                ListTile(
                  title: Text('Feedback'),
                  onTap: () {
                    Navigator.pushNamed(context, '/feedback');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Trilhas extends StatefulWidget {
  String _trilha;

  Trilhas(String trilha) {
    _trilha = trilha;
  }
  _TrilhasState createState() => _TrilhasState(_trilha);
}

class _TrilhasState extends State<Trilhas> {
  String _trilha;

  _TrilhasState(String trilha) {
    _trilha = trilha;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'Trilhas de conhecimento: ' + _trilha,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
