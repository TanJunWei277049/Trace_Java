import 'package:flutter/material.dart';

import '../view/mainscreen.dart';
import 'notes3page2.dart';

//void main() => runApp(const MyApp());

class Notes3 extends StatefulWidget {
  const Notes3({super.key});

 @override
  State<Notes3> createState() => _Notes3State();
}

class _Notes3State extends State<Notes3> {
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
          title: const Text('Looping Control Structures',textAlign: TextAlign.center,),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
              const Text("Repetition Structures",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              const Text("- To implement a looping control using while statements\n"
                  "- To implement a looping control using do…while statements\n"
                  "- To implement a looping control using for statements\n"
                  "- To implement nested loop statements\n"
                  "- Repetition controls a block of code to be executed for a fixed number of times or until a certain condition is met.",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("\nIn JAVA, repetition can be done by using the following repetition statements:",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("a) while\nb) do…while\nc) for",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("\nThe while Statement",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("The general form of the while statement is:",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/repetition.png',scale: 1,),
              const Text("- The while statement evaluates expression/condition, which must return a boolean value. If the expression/condition is TRUE, the statement(s) in the while block is/are executed.\n"
                  "- It continues testing the expression/ condition and executing its block until the expression/condition evaluates to FALSE",style: TextStyle(fontSize: 20,height: 1.5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/repetition2.png',scale: 1,),
                ],
              ),
              const Text("\nExample 1:",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              Image.asset('assets/images/repetition3.png',scale: 1,),
              const Text("Output: \n1 2 3 4",style: TextStyle(fontSize: 20,height:1.5,color: Colors.red)),
              const Text("\nExample 2:",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              Image.asset('assets/images/repetition4.png',scale: 1,),
              const Text("Output: \nSUM : 1\nSUM : 7",style: TextStyle(fontSize: 20,height:1.5,color: Colors.red)),
              const Text("\nThe do..while Statement",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("The general form of the do…while statement is:",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/repetition5.png',scale: 1,),
              const Text("The statement executes first and then the expression is evaluated. If the expression evaluates to TRUE, the statement executes again. This process will be continued until the expression become FALSE.",style: TextStyle(fontSize: 20,height: 1.5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/repetition6.png',scale: 1,),
                ],
              ),
              const Text("\nExample 1:",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              Image.asset('assets/images/repetition7.png',scale: 1,),
              const Text("Output: \n0 1 2 3",style: TextStyle(fontSize: 20,height:1.5,color: Colors.red)),
              const Text("\nExample 2:",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              Image.asset('assets/images/repetition8.png',scale: 1,),
              const Text("Output: \nSUM :2\nSUM :9",style: TextStyle(fontSize: 20,height:1.5,color: Colors.red)),
              const Text("\nThe for Statement",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("The general form of the for statement is:",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/repetition9.png',scale: 1,),
              const Text("The for loop executes as follow:",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("- The initial statement executes.\n"
                  "The loop condition is evaluated. If the loop condition evaluates to TRUE:\n"
                  "\t\ta) execute the for loop statement.\n"
                  "\t\tb) execute the update statement\n"
                  "- Repeat step 2 until the loop condition evaluates to FALSE.",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/repetition10.png',scale: 1,),
              const Text("\nExample 1:",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              Image.asset('assets/images/repetition11.png',scale: 1,),
              const Text("Output: \n1234",style: TextStyle(fontSize: 20,height:1.5,color: Colors.red)),
              const Text("\nExample 2:",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              Image.asset('assets/images/repetition12.png',scale: 1,),
              const Text("Output: \nYAHOO YAHOO YAHOO YAHOO YAHOO ***",style: TextStyle(fontSize: 20,height:1.5,color: Colors.red)),
              const Text("\nInfinite Loop",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("- By using any repetition statements, make sure that the loop will eventually terminate.\n"
                  "- Infinite loop is a loop that continues to execute endlessly.",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/repetition13.png',scale: 1,),
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
              }else {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Notes3page2()));
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