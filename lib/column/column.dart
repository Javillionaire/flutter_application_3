import 'package:flutter/material.dart';

class ColumnPage extends StatefulWidget {
  const ColumnPage({super.key});

  @override
  State<ColumnPage> createState() => _ColumnPage();
}

class _ColumnPage extends State<ColumnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.amber,
              height: 200,
              width: 100,
            ),
            Container(
              color: Colors.purple,
              height: 200,
              width: 50,
            ),
            Container(
              color: Colors.white,
              height: 150,
              width: 50,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.of(context).pushNamed('/rows'),
        },
        child: const Text('Rows'),
      ),
    );
  }
}
