import 'package:flutter/material.dart';

//void main() => runApp(const MyApp());

class DoExercisesScreen extends StatelessWidget {
  const DoExercisesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Do Exercises'),
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.arrow_back)),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      );
  }
}

