import 'package:flutter/material.dart';

class RowsPage extends StatefulWidget {
  const RowsPage({super.key});

  @override
  State<RowsPage> createState() => _RowsPage();
}

class _RowsPage extends State<RowsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.black,
              height: 50,
              width: 50,
            ),
            Container(
              color: Colors.red,
              width: 200,
              height: 100,
            ),
            Container(
              color: Colors.green,
              height: 100,
              width: 75,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {Navigator.of(context).pushNamed('/stacks')},
        child: const Text('Stack'),
      ),
    );
  }
}
