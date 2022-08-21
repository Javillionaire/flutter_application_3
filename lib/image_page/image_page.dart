import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});
  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Image.network(
              'https://iso.500px.com/wp-content/uploads/2016/03/stock-photo-142984111.jpg')),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: (() => {
              Navigator.of(context).pushNamed('/button'),
            }),
        child: const Text('Button'),
      ),
    );
  }
}
