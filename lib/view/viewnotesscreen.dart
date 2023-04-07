import 'package:flutter/material.dart';
import 'package:test_1/notes/notes1.dart';
import 'package:test_1/notes/notes2.dart';

import '../notes/notes3.dart';

//void main() => runApp(const MyApp());

class ViewNotesScreen extends StatelessWidget {
  const ViewNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('View Notes'),
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.arrow_back)),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,50,0,90),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                const Text("Please select a topic: ", style: TextStyle(fontSize: 20,color: Colors.black),),
                 SizedBox(
                  width: 300,
                  height: 100,
                  child: ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Notes1()));
                    }, 
                    child: const Text("Numerical Computational & Expression",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,color: Colors.black),),)),
                SizedBox(
                  width: 300,
                  height: 100,
                  child: ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Notes2()));
                    },  
                    child: const Text("Selection Control Structures",style: TextStyle(fontSize: 20,color: Colors.black),),)),
                SizedBox(
                  width: 300,
                  height: 100,
                  child: ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Notes3()));
                    }, 
                    child: const Text("Looping Control Structures",style: TextStyle(fontSize: 20,color: Colors.black),),)),
              ],
            ),
          ),
        ),
      );
  }
}

