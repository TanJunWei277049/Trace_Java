import 'package:flutter/material.dart';

import '../view/mainscreen.dart';

//void main() => runApp(const MyApp());

class Notes2page2 extends StatefulWidget {
  const Notes2page2({super.key});

 @override
  State<Notes2page2> createState() => _Notes2page2State();
}

class _Notes2page2State extends State<Notes2page2> {
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
              const Text("Multiple Selection (nested if)",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("Syntax:",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              Image.asset('assets/images/selection12.png',scale: 1,),
              const Text("\nExample 1:",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              Image.asset('assets/images/selection13.png',scale: 1,),
              const Text("Output: \nEnter a number: 0\n0 is a zero number",style: TextStyle(fontSize: 20,height:1.5,color: Colors.red)),
              const Text("\nExample 2:",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              const Text("The grading scheme for a course is given as below:",style: TextStyle(fontSize: 20,height: 1.5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/selection14.png',scale: 1,),
                ],
              ),
              const Text("Read a mark & determine the grade.",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/selection15.png',scale: 1,),
              const Text("Output: \nEnter the number : 500\nInvalid score",style: TextStyle(fontSize: 20,height:1.5,color: Colors.red)),
              const Text("\nSwitch Structures (multiple selection)",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("- Expression is also known as selector.\n- Value can only be integral.",style: TextStyle(fontSize: 20,height: 1.5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/selection16.png',scale: 1,),
                ],
              ),
              const Text("\nLogic of a switch structures:",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              Image.asset('assets/images/selection17.png',scale: 1,),
              const Text("\nExample 1:",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              Image.asset('assets/images/selection18.png',scale: 1,),
              const Text("\nExample 2:",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              Image.asset('assets/images/selection19.png',scale: 1,),
              const Text("\nThe Switch Statement}",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              const Text("- Often a break statement is used as the last statement in each case's statement list\n"
                  "- A break statement causes control to transfer to the end of the switch statement\n"
                  "- If a break statement is not used, the flow of control will continue into the next case",style: TextStyle(fontSize: 20,height: 1.5)),
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