import 'package:flutter/material.dart';
import 'models/item.dart';

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  var items = [Item()];

  HomePage({Key? key}) : super(key: key) {
    items = [];
    items.add(Item(title: "Banana", done: false));
    items.add(Item(title: "Maçã", done: true));
    items.add(Item(title: "Laranja", done: false));
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var newTaskCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            //color: Colors.white,
            fontSize: 18,
          ),
          decoration: InputDecoration(
            labelText: "Nova tarefa...",
            labelStyle: TextStyle(
                //color: Colors.white,
                ),
          ),
        ),
        // leading: Text("Menu"),
        // actions: <Widget>[
        //   Icon(Icons.plus_one),
        // ],
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (BuildContext ctxt, int index) {
          final item = widget.items[index];
          return CheckboxListTile(
            title: Text(item.title!),
            key: Key(item.title!),
            value: item.done,
            onChanged: (value) {
              setState(() {
                item.done = value;
              });
            },
          );
        },
      ),
    );
  }
}
