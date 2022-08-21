import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});
  @override
  State<ContainerPage> createState() => _ContainerPage();
}

class _ContainerPage extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Container(
          padding: const EdgeInsets.all(20),
          height: 300,
          width: 200,
          color: Colors.purple,
          child: const Text(
            'container here',
            textAlign: TextAlign.right,
          ),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: (() => {Navigator.of(context).pushNamed('/column')}),
          child: const Text('Column'),
        ));
  }
}
