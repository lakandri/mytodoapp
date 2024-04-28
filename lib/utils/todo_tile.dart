import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  TodoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // height: MediaQuery.of(context).size.height / 2,

        child: Row(
          children: [
            Checkbox(value: taskCompleted, onChanged: onChanged),
            Text(
              taskName,
              style: TextStyle(
                  decoration: taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
          ],
        ),
        decoration: BoxDecoration(color: Colors.grey),
      ),
    );
  }
}
