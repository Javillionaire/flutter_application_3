import 'package:flutter/material.dart';
import 'package:flutter_application_3/button/button.dart';
import 'package:flutter_application_3/rows/rows.dart';
import 'package:flutter_application_3/stacks/stacks.dart';
import 'package:google_fonts/google_fonts.dart';

import 'column/column.dart';
import 'container/container_page.dart';
import 'image_page/image_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      color: Colors.white,
      routes: {
        '/image': (context) => const ImagePage(),
        '/button': (context) => const ButtonPage(),
        '/container': (context) => const ContainerPage(),
        '/column': (context) => const ColumnPage(),
        '/rows': (context) => const RowsPage(),
        '/stacks': (context) => const StacksPage()
      },
      home: const MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int? indexSelect = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text('App Bar'),
          elevation: 10,
          bottomOpacity: .1,
          centerTitle: false,
          flexibleSpace: const FlexibleSpaceBar(
              background: DecoratedBox(
                  position: DecorationPosition.foreground,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.blue, Colors.black, Colors.green])))),
          shadowColor: Colors.pink,
          shape: const RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.horizontal(right: Radius.circular(20))),
          actions: const [Icon(Icons.notifications)]),
      body: SafeArea(
          child: Column(
        children: [
          Center(
            heightFactor: 8.5,
            child: Text(
              'Home Page',
              style: GoogleFonts.lato(color: Colors.lime, fontSize: 60),
            ),
          ),
          const SizedBox(
            child: Icon(
              Icons.mic,
              size: 35,
            ),
          ),
        ],
      )

          /* child: Center(
        child: 
      ) */
          ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: (() => {
              Navigator.of(context).pushNamed('/image'),
            }),
        child: const Text('Image'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexSelect!,
        onTap: (newIndex) {
          indexSelect = newIndex;
          setState(() {});
        },
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search')
        ],
      ),
    );
  }
}
