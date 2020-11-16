import 'package:flutter/material.dart';

class FeedBack extends StatefulWidget {
  @override
  _FeedbackState createState() {
    return _FeedbackState();
  }
}

class _FeedbackState extends State<FeedBack> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
      ),
      body: Builder(
        builder: (BuildContext context) {
          return ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Acompanhamento de\ninvestimentos:',
                        style: TextStyle(fontSize: 22),
                      ),
                      TextFormField(
                        maxLines: 10,
                        autofocus: true,
                        decoration: InputDecoration(
                          labelText: 'Digite aqui',
                          border: OutlineInputBorder(
                            borderSide: (BorderSide(color: Colors.black)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: const EdgeInsets.all(16.0),
                        ),
                        validator: (value) {
                          if (value.isEmpty)
                            return 'O campo é obrigatório';
                          else
                            return null;
                        },
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Acompanhamento de de retorno de investimentos:',
                        style: TextStyle(fontSize: 22),
                      ),
                      TextFormField(
                        maxLines: 10,
                        autofocus: true,
                        decoration: InputDecoration(
                          labelText: 'Digite aqui',
                          border: OutlineInputBorder(
                            borderSide: (BorderSide(color: Colors.black)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: const EdgeInsets.all(16.0),
                        ),
                        validator: (value) {
                          if (value.isEmpty)
                            return 'O campo é obrigatório';
                          else
                            return null;
                        },
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Acompanhamento de prazos:',
                        style: TextStyle(fontSize: 22),
                      ),
                      TextFormField(
                        maxLines: 10,
                        autofocus: true,
                        decoration: InputDecoration(
                          labelText: 'Digite aqui',
                          border: OutlineInputBorder(
                            borderSide: (BorderSide(color: Colors.black)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: const EdgeInsets.all(16.0),
                        ),
                        validator: (value) {
                          if (value.isEmpty)
                            return 'O campo é obrigatório';
                          else
                            return null;
                        },
                      ),
                      SizedBox(height: 50),
                      Center(
                        child: RaisedButton(
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              Scaffold.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Enviado feedback..."),
                                ),
                              );
                              //sleep(Duration(seconds: 5));
                              // Navigator.pop(context);
                            }
                          },
                          child: Text('Enviar',
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
    );
  }
}
