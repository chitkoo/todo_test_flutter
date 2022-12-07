
import 'package:flutter/material.dart';

import '../home.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.allTasks,
  }) : super(key: key);

  final List<Task> allTasks;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: allTasks.length,
          itemBuilder: (context, index) {
            var task = allTasks[index];
            return ListTile(
              title: Text(task.title),
              trailing: const Checkbox(
                value: false,
                onChanged: null,
              ),
            );
          }),
    );
  }
}