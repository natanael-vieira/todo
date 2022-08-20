import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const HomePage(
        title: '',
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Text("Menu"),
        // actions: <Widget>[
        //   Icon(Icons.plus_one),
        // ],
        title: Text("ToDo - List"),
      ),
      body: Center(
        child: Text("Olá Mundo!"),
      ),
    );
  }
}
