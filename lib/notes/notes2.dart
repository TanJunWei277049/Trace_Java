import 'package:flutter/material.dart';

import '../view/mainscreen.dart';
import 'notes2page2.dart';

//void main() => runApp(const MyApp());

class Notes2 extends StatefulWidget {
  const Notes2({super.key});

 @override
  State<Notes2> createState() => _Notes2State();
}

class _Notes2State extends State<Notes2> {
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
              const Text("Flowcharts",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              const Text("Flowcharts are written with program flow from the top of a page to the bottom. Each command is placed in a box of the appropriate shape, and arrows are used to direct program flow.\nThe following shapes are often used in flowcharts:",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/pseudocode.png',scale: 1,),
              const Text("\n\nSelection",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              const Text("There are 3 types of Java selection structures:\n"
                  "- if statement\n"
                  "- if-else statement\n"
                  "- switch statement",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("\nThe if Statement",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("The if statement has the following syntax:",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/selection.png',scale: 1,),
              const Text("\nExample:",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              Image.asset('assets/images/selection2.png',scale: 1,),
              const Text("Output: \nEnter a number: 4 \nYou've entered 4 \n4 is an even number",style: TextStyle(fontSize: 20,height:1.5,color: Colors.red)),
              const Text("\nLogic of an if statement:",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              Image.asset('assets/images/selection3.png',scale: 1,),
              const Text("For an example, Write a program that prompts the user for a number and display “even” if the number is an even number",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/selection2.png',scale: 1,),
              const Text("The flowchart for the program will be:",style: TextStyle(fontSize: 20,height: 1.5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/selection4.png',scale: 1,),
                ],
              ),
              const Text("\nBoolean Expressions",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("A condition often uses one of Java's equality operators or relational operators, which all return boolean results:",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/selection5.png',scale: 1,),
              const Text("\nExample:",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              const Text("int number = 5;\nSystem.out.println(number == 5);",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              const Text("Output: \ntrue",style: TextStyle(fontSize: 20,height:1.5,color: Colors.red)),
              const Text("int number = 5;\nSystem.out.println(number != 5);",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              const Text("Output: \nfalse",style: TextStyle(fontSize: 20,height:1.5,color: Colors.red)),
              const Text("int number = 5;\nSystem.out.println(number < 5);\nSystem.out.println(number > 5);",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              const Text("Output: \nfalse\nfalse",style: TextStyle(fontSize: 20,height:1.5,color: Colors.red)),
              const Text("\nLogical Operators",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("- Expressions that use logical operators can form complex conditions",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/selection6.png',scale: 1,),
              const Text("- All logical operators have lower precedence than the relational operators\n"
                  "- Logical NOT has higher precedence than logical AND and logical OR",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("\nLogical (Boolean) Operation in Java",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              Image.asset('assets/images/selection7.png',scale: 1,),
              const Text("\nExample:",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              const Text("Withdrawal amount of more than RM1000.00 is not allowed.",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/selection8.png',scale: 1,),
              const Text("\nThe if-else Statement (2 way selection)",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("- An else clause can be added to an if statement to make an if-else statement",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/selection9.png',scale: 1,),
              const Text("- If the condition is true, statement1 is executed; if the condition is false, statement2 is executed\n- One or the other will be executed, but not both",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("\nLogic of an if-else statement",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              Image.asset('assets/images/selection10.png',scale: 1,),
              const Text("\nExample:",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              const Text("Loan Processing. Can apply if age is between 25 to 50.",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/selection11.png',scale: 1,),
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Notes2page2()));
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