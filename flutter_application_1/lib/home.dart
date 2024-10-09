import 'package:flutter/material.dart';
import 'package:flutter_application_1/second_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ListScreen();
  }
}

class ListScreen extends StatelessWidget {
  final List<int> items = List<int>.generate(13, (i) => i + 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View '),
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item ${items[index]}'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.grid_view),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondPage()),
          );
        },
      ),
    );
  }
}
