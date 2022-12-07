import 'package:flutter/material.dart';
import '../home.dart';
import '../models/task.dart';

import 'dart:developer' as devtools show log;

class OpenBtmSheet extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();

  OpenBtmSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            const Text(
              'Add Task',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              autofocus: true,
              controller: _titleController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), label: Text("Title")),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("cancel"),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      var inputTask = Task(title: _titleController.text);
                      devtools.log('$inputTask');
                      context.read<TasksBloc>().add(AddTask(task: inputTask));
                      Navigator.of(context).pop();
                    },
                    child: const Text("Add"))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
