import 'package:exercise_app/home/view/home_view.dart';
import 'package:flutter/material.dart';

import 'home/home.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasksBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Test App",
        theme: ThemeData(primarySwatch: Colors.brown),
        home: const HomeView(),
      ),
    );
  }
}
