import 'package:flutter/material.dart';

/// Flutter code sample for [BottomNavigationBar].

void main() => runApp(const BoilerPlateApp());

class BoilerPlateApp extends StatelessWidget {
  const BoilerPlateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const BoilerPlateExample(),
    );
  }
}

class BoilerPlateExample extends StatelessWidget {
  const BoilerPlateExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0XFF182949),
        title: const TextStyleApp(),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff182949),
              ),
              child: TextStyleApp(),
            ),
            ListTile(
              leading: Icon(Icons.favorite, color: Color(0xFF7B7A7A)),
              title: DrawerListileApp(),
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                const Card(
                  child: ListTile(
                    leading: Icon(Icons.airplay),
                    title: TextStyleApp2(),
                    subtitle: Text(
                      'List tile 1',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.25,
                          fontFamily: String.fromEnvironment('Roboto'),
                          height: 1.4),
                    ),
                  ),
                ),
                const Card(
                  child: ListTile(
                    leading: Icon(Icons.airplay),
                    title: TextStyleApp2(),
                    subtitle: Text(
                      'List tile 2',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.25,
                          fontFamily: String.fromEnvironment('Roboto'),
                          height: 1.4),
                    ),
                  ),
                ),
                const Card(
                  child: ListTile(
                    leading: Icon(Icons.airplay),
                    title: TextStyleApp2(),
                    subtitle: Text(
                      'List tile 3',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.25,
                          fontFamily: String.fromEnvironment('Roboto'),
                          height: 1.4),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(3, 11, 0, 0),
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text('TEXT BUTTON',
                        style: TextStyle(
                            color: Color(0xff182949),
                            letterSpacing: 1.25,
                            fontSize: 14,
                            height: 1.4,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            fontFamily: String.fromEnvironment('Roboto'))),
                  ),
                ),
              ],
            ),
          ),
          Container(
            //color:,
            padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
            alignment: Alignment.bottomLeft,
            //decoration: const BoxDecoration(shape: BoxShape.circle,color: Color(0xff182949)),
            child: IconButton.filled(
              onPressed: () {},
              style: IconButton.styleFrom(
                  backgroundColor: const Color(0xff182949)),
              icon: const Icon(
                Icons.settings,
                color: Color(0xffffffff),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                //height: 81,
                padding: const EdgeInsets.fromLTRB(17, 18, 0, 30),
                alignment: Alignment.bottomLeft,
                child: OutlinedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Color(0xffffe8e8))),
                  onPressed: () {},
                  child: const Text(
                    'Outlined Button',
                    style: TextStyle(
                        color: Color.fromRGBO(24, 41, 73, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.1),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 30),
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed: () {},
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0))),
                    backgroundColor: const Color(0xff182949),
                    child: const Icon(Icons.add, color: Color(0xffffffff)),
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            height: 1,
            thickness: 1,
            indent: 13,
            endIndent: 14,
            color: Color.fromRGBO(33, 33, 33, 1),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(65, 13, 64, 13),
            child: Text('Copyright 2022 SODA  All rights reserved.'),
          ),
        ],
      ),

      //bottomSheet: ,
    );
  }
}

class TextStyleApp extends StatelessWidget {
  const TextStyleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'SODA',
      style: TextStyle(
        fontSize: 20,
        height: 1.2,
        color: Color(0xFFFFFFFF),
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      ),
    );
  }
}

class TextStyleApp2 extends StatelessWidget {
  const TextStyleApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('This is List tile',
        style: TextStyle(
            fontWeight: FontWeight.w500,
            letterSpacing: 0.15,
            fontSize: 20,
            fontFamily: String.fromEnvironment('Roboto'),
            height: 1.2));
  }
}

class DrawerListileApp extends StatelessWidget {
  const DrawerListileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Text(
        'Icon:favorite',
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 0.6),
          letterSpacing: 0.1,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
