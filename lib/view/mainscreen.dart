import 'package:flutter/material.dart';
import 'package:test_1/view/doexercisesscreen.dart';
import 'package:test_1/view/viewnotesscreen.dart';


//void main() => runApp(const MyApp());

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Trace Java'),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,90,0,90),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 300,
                  height: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const ViewNotesScreen()));
                    }, 
                    child: const Text("View Notes",style: TextStyle(fontSize: 40,color: Colors.black),),)),
                 SizedBox(
                  width: 300,
                  height: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const DoExercisesScreen()));
                    }, 
                    child: const Text("Do Exercises",style: TextStyle(fontSize: 40,color: Colors.black),),)),
                const SizedBox(
                  width: 300,
                  height: 120,
                  child: ElevatedButton(onPressed: null, child: Text("View Marks",style: TextStyle(fontSize: 40,color: Colors.black),),)),
              ],
            ),
          ),
        ),
      );
  }
}
