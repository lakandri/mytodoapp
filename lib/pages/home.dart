import 'package:flutter/material.dart';
import 'package:mytodoapp/utils/dialog_box.dart';
import 'package:mytodoapp/utils/todo_tile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List toDoList = [
    ['running', false],
    ['ning', false],
    ['running', false]
  ];

  // create new task

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox();
        });
  }

  void checkBoxChanged(bool? value, index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Text('Mnaish'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (context, index) {
            return TodoTile(
                taskName: toDoList[index][0],
                taskCompleted: toDoList[index][1],
                onChanged: (value) => checkBoxChanged(value, index));
          }),
    );
  }
}
