import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> words = [
    'abc',
    'abc',
    'abc',
    'abc',
    'abc',
    'abc',
    'abc',
    'abc',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SW Dictionary'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: null,
            tooltip: 'Search',
          )
        ],
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemBuilder: (ctx, index) => ListTile(
            title: Text(words[index]),
          ),
        ),
      ),
    );
  }
}
