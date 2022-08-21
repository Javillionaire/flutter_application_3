import 'package:flutter/material.dart';

class StacksPage extends StatefulWidget {
  const StacksPage({super.key});

  @override
  State<StacksPage> createState() => _StacksPage();
}

class _StacksPage extends State<StacksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: const [
          Center(
              child: Text(
            'Home',
            style: TextStyle(color: Colors.pink, fontSize: 36),
          )),
          Center(
            child: CircularProgressIndicator(),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () => {Navigator.of(context).pushNamed('/expanded')},
        child: const Text('Expanded'),
      ),
    );
  }
}
