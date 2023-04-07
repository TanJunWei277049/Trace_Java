import 'package:flutter/material.dart';

import '../view/mainscreen.dart';
import 'notes1page2.dart';

//void main() => runApp(const MyApp());

class Notes1 extends StatefulWidget {
  const Notes1({super.key});

 @override
  State<Notes1> createState() => _Notes1State();
}

class _Notes1State extends State<Notes1> {
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
          title: const Text('Numerical Computational & \nExpression',textAlign: TextAlign.center,),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  const [
              Text("Character String",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text("- A string literal is represented by putting double quotes around the text"
                  "\n- Every character string is an object in Java, defined by the String class"
                  "\n- Every string literal represents a String object"
                  "\n- Examples: “This is a string literal.”",style: TextStyle(fontSize: 20,height: 1.5),),
              Text("\nThe print and println Method",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text("- Print() method in Java is used to display a text on the console. This text is passed as the parameter to this method in the form of String. The next printing takes place from just here."
                  "- Println() method in Java is also used to display a text on the console. This text is passed as the parameter to this method in the form of String. This method prints the text on the console and the cursor remains at the start of the next line at the console. The next printing takes place from next line.",style: TextStyle(fontSize: 20,height: 1.5),),
              Text("\nExample of print() and println():",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              Text("public class Example1 {"
                  "\n\t\tpublic static void main(String[] args) {"
                  "\n\t\t\t\tSystem.out.println(“Hello!”);"
                  "\n\t\t\t\tSystem.out.print(“My name is ”);"
                  "\n\t\t\t\tSystem.out.print(“Tan.”);"
                  "\n\t\t\t\tSystem.out.println();"
                  "\n\t\t\t\tSystem.out.print(“What is your name?”);",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green),),
              Text("Output:\nHello!\nMy name is Tan.\nWhat is your name?",style: TextStyle(fontSize: 20,height:1.5,color: Colors.red)),
              Text("\nThe printf Method",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text("Usage (Syntax):\n\t\tSystem.out.printf(formatString , items);\nwhere:\n- formatString: a string with format specifiers\n- items: list of data/variables to be displayed",style: TextStyle(fontSize: 20,height: 1.5),),
              Text("\nExample of printf",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              Text("Price per litre: 1.21997\nTo control the output appearance of numeric variables, use formatted output tools such as:",style: TextStyle(fontSize: 20,height: 1.5)),
              Text("System.out.printf(“%.2f”, price);",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              Text("Price per liter: 1.22",style: TextStyle(fontSize: 20,height:1.5,color: Colors.red)),
              Text("\nTo left justified a string, the - is used: ",style: TextStyle(fontSize: 20,height: 1.5)),
              Text("System.out.printf(“%-10s”,“Total:”)",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              Text("Total: _ _ _ _",style: TextStyle(fontSize: 20,height:1.5,color: Colors.red)),
              Text("\nRight justify a number with two decimal places: ",style: TextStyle(fontSize: 20,height: 1.5)),
              Text("System.out.printf(“%10.2f”,“Price:”)",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              Text("_ _ _ _ _ 17.29",style: TextStyle(fontSize: 20,height:1.5,color: Colors.red)),
              Text("\nString Concatenation",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text("- The string concatenation operator (+) is used to append one string to the end of another:\n\t\t“Peanut butter ” + “and jelly”"
                  "\n- It can also be used to append a number to a string: \n\t\t“Peanut butter ” + 123",style: TextStyle(fontSize: 20,height: 1.5)),
              Text("- The + operator is also used for arithmetic addition\n- The function that it performs depends on the type of the information on which it operates"
                  "\n- If both operands are strings, or if one is a string and one is a number, it performs string concatenation\n- If both operands are numeric, it adds them"
                  "\n- The + operator is evaluated left to right, but parentheses can be used to force the order",style: TextStyle(fontSize: 20,height: 1.5)),
              Text("\nExample: ",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline,),),
              Text("System.out.println (“24 and 45 concatenated: ” + 24 + 45);\nSystem.out.println (“24 and 45 added: ” + (24 + 45));",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              Text("24 and 45 concatenated: 2445\n24 and 45 added: 69",style: TextStyle(fontSize: 20,height:1.5,color: Colors.red)),
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Notes1page2()));
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

