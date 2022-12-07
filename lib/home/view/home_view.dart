import 'package:flutter/material.dart';

import 'dart:developer' as devtools show log;

import '../home.dart';
import '../widgets/list_item.dart';
import '../widgets/bottom_sheet.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  void _openBtmSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => OpenBtmSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        final List<Task> allTasks = state.allTasks;
        devtools.log('$allTasks');

        return Scaffold(
          appBar: AppBar(title: const Text("Home")),
          body: Column(children: [
            Center(child: Chip(label: Text('Tasks : ${allTasks.length}'))),
            ListItem(allTasks: allTasks),
          ]),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _openBtmSheet(context);
            },
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
