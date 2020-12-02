import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'capacitacao.dart';
import 'feedback.dart';

class DrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            accountName: Text("Empresa de exemplo"),
            accountEmail: Text("exemplo@email.com"),
            currentAccountPicture: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
              ),
              backgroundColor: Colors.transparent,
            ),
          ),
          ListTile(
            leading: Icon(Icons.video_collection),
            title: Text("Trilhas de capacitação"),
            subtitle: Text("Obter qualificação"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => Capacitacao()));
            },
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text("Feedback"),
            subtitle: Text("Fale com seu credor"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => FeedBack()));
            },
          ),
        ],
      ),
    );
  }
}
