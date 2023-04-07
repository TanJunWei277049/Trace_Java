import 'package:flutter/material.dart';

import '../view/mainscreen.dart';

//void main() => runApp(const MyApp());

class Notes3page2 extends StatefulWidget {
  const Notes3page2({super.key});

 @override
  State<Notes3page2> createState() => _Notes3page2State();
}

class _Notes3page2State extends State<Notes3page2> {
  int _currentIndex = 1;
  List<Widget> body = const [
    Icon(Icons.arrow_left),
    Icon(Icons.home),
    Icon(Icons.arrow_right),
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Selection Control Structures',textAlign: TextAlign.center,),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
              const Text("Repetition Structure",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("Repetition can be controlled by:\n"
                  "a) Counter controlled loop\n"
                  "b) Sentinel controlled loop\n"
                  "c) Flag controlled loop",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("\nCounter Controlled Loop",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("- Know the exactly how many times a set of statements needs to be executed.\n"
                  "- General form:",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/repetition14.png',scale: 1,),
              const Text("\nExample:",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              Image.asset('assets/images/repetition15.png',scale: 1,),
              const Text("Output: \n1 3 5 7 9",style: TextStyle(fontSize: 20,height:1.5,color: Colors.red)),
              const Text("\nSentinel Controlled Loop",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("- You might not know exactly how many times a set of statements needs to be executed until a special value is met.\n"
                  "- This special value is called a sentinel that inserted by user (input process).\n"
                  "- General form:",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/repetition16.png',scale: 1,),
              const Text("\nExample:",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              Image.asset('assets/images/repetition17.png',scale: 1,),
              const Text("Output: \nPress 1 if u want to continue:1 INSIDE LOOPING\nPress 1 if u want to continue:0 OUTSIDE LOOPING",style: TextStyle(fontSize: 20,height:1.5,color: Colors.red)),
              const Text("\nFlag Controlled Loop",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("- Use a boolean variable to control the loop\n"
                  "- General form:",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/repetition18.png',scale: 1,),
              const Text("\nNested Loops",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("- The body of a loop can contain another loop.\n"
                  "- For each iteration of the outer loop, the inner loop executes completely.\n"
                  "- Example:",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/repetition19.png',scale: 1,),    
              const Text("Output: \n0[0],0[1],0[2],0[3],1[0],1[1],1[2],1[3],2[0],2[1],2[2],2[3],3[0],3[1],3[2],3[3],",style: TextStyle(fontSize: 20,height:1.5,color: Colors.red)),
              const Text("\nOther Loop Controls: break and continue",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("- The break and continue statements alter the flow of control in a program.\n"
                  "- Can use the break statement in while, for, and do..while loops to immediately exit from the structures.\n"
                  "- The continue statement is used to skip the remaining statements in the loop and proceeds with the next iteration of the loop.",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/repetition19.png',scale: 1,),
              const Text("Example:",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/repetition20.png',scale: 1,),
              const Text("Output: \n0 1 2 3",style: TextStyle(fontSize: 20,height:1.5,color: Colors.red)),
            ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
              if (_currentIndex==0){
                Navigator.pop(context);
              }else if (_currentIndex==1){
                Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (content) => const MainScreen()));
              }
            });
          }, 
          items: const [
            BottomNavigationBarItem(
              label: "Previous Page",
              icon: Icon(Icons.arrow_left),
            ),
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Next Page",
              icon: Icon(Icons.arrow_right),
            )
          ],
        ),
      );
  }
}