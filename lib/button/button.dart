import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});
  @override
  State<ButtonPage> createState() => _ButtonPage();
}

class _ButtonPage extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: ListView(
          children: [
            Center(
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                disabledColor: Colors.green,
                disabledTextColor: Colors.black,
                child: const Text('Materialbutton'),
                onPressed: () {},
              ),
            ),
            Center(
                child: OutlinedButton(
              onPressed: () {},
              child: const Text('oUtline button'),
            )),
            Center(
              child: MaterialButton(
                color: Colors.green,
                onPressed: () {},
                child: const Text('Materialbutton2'),
              ),
            ),
            Center(
              child: IconButton(
                color: Colors.red,
                icon: const Icon(Icons.directions_bus),
                onPressed: () {},
              ),
            ),
            Center(
              child: TextButton(
                child: const Text('textbutton'),
                onPressed: () {},
              ),
            ),
            Center(
              child: ElevatedButton(
                child: const Text('Elevated Button'),
                onPressed: () {},
              ),
            ),
            Center(
              child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.dangerous),
                  label: const Text('outlinebutton icon')),
            ),
            DropdownButton(
                value: 'salom',
                items: const [
                  DropdownMenuItem(
                    value: 'salom',
                    child: Text('salom'),
                  ),
                  DropdownMenuItem(
                    value: 'hi',
                    child: Text('hi'),
                  )
                ],
                onChanged: (value) {})
          ],
        )),
        floatingActionButton: FloatingActionButton.large(
          onPressed: (() => Navigator.of(context).pushNamed('/container')),
          child: const Text('Container'),
        ));
  }
}
