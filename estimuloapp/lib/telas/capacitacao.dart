import 'package:flutter/material.dart';

import 'video_list.dart';

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
              VideoList('financeiro'),
              VideoList('marketing'),
              VideoList('tecnologia'),
              VideoList('rh'),
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
