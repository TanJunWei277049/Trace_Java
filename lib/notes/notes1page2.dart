import 'package:flutter/material.dart';
import 'package:test_1/notes/notes1page3.dart';

import '../view/mainscreen.dart';

class Notes1page2 extends StatefulWidget {
  const Notes1page2({super.key});

 @override
  State<Notes1page2> createState() => _Notes1page2State();
}

class _Notes1page2State extends State<Notes1page2> {
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
              children:  [
              const Text("Escape Sequences",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              const Text("- What if we wanted to print the quote character?\n- The following line would confuse the compiler because it would interpret the second quote as the end of the string"
                  "\n\t\tSystem.out.println (“I said “Hello” to you.”);\n- An escape sequence is a series of characters that represents a special character\n"
                  r"An escape sequence begins with a backslash character (\)",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text(r"System.out.println (“I said \“Hello\” to you.”);",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              const Text("Output:\nI said “Hello” to you.\n",style: TextStyle(fontSize: 20,height:1.5,color: Colors.red)),
              const Text("Some Java escape sequences: ",style: TextStyle(fontSize: 20,height: 1.5,decoration: TextDecoration.underline)),
              Image.asset('assets/images/escapesequences.png',scale: 1,),
              const Text("\n\nVariables",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              const Text("- A variable is a name for a location in memory that holds a value \n"
                  "- A variable declaration specifies the variable's name and the type of information that it will hold",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/variable1.png',scale: 1,),
              const Text("\nInitialized Variables",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline)),
              Image.asset('assets/images/variable2.png',scale: 1,),
              const Text("\n\nIdentifiers",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              const Text("- Identifier: name of a class, variable, constant and method",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("\nRules for identifiers in Java: ",style: TextStyle(fontSize: 20,height: 1.5,decoration: TextDecoration.underline)),
              const Text("a)Can be made up of letters, digits, and the underscore (_) character\n"
                  "b)Cannot start with a digit\n"
                  "c)Cannot use other symbols such as ? or %\n"
                  "d)Spaces are not permitted inside identifiers\n"
                  "e)You cannot use reserved words\n"
                  "f)They are case sensitive",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("\n\nConstants",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              const Text("- A constant is an identifier that is similar to a variable except that it holds the same value during its entire existence\n"
                  "- As the name implies, it is constant, not variable\n"
                  "- The compiler will issue an error if you try to change the value of a constant\n"
                  "- In Java, we use the final modifier to declare a constant",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("final int MIN_HEIGHT = 69;",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              const Text("\n\nPrimitive Data",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              const Text("- There are eight primitive data types in Java",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/primitivedata.png',scale: 1,),
              const Text("\nStorage per Type (in bytes)",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline)),
              Image.asset('assets/images/primitivedata2.png',scale: 1,),
              const Text("\nNumeric Primitive Data",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("- The difference between the numeric primitive types is their size and the values they can store:",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/primitivedata3.png',scale: 1,),
              const Text("\nCharacters",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("- A char variable stores a single character\n"
                  "- Character literals are delimited by single quotes:\n"
                  r"'a'     'X'     '7'    '$'    ','     '\n'"
                  "\n- Example declarations:",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("char topGrade = 'A';\nchar terminator = ';'\t, separator = ' ';",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              const Text("- The difference between a primitive character variable, which holds only one character, and a String object, which can hold multiple characters",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("\nCharacter Sets",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline)),
              const Text("- A character set is an ordered list of characters, with each character corresponding to a unique number\n"
                  "- A char variable in Java can store any character from the Unicode character set\n"
                  "- The ASCII character set is older and smaller than Unicode, but is still quite popular\n"
                  "- The ASCII characters are a subset of the Unicode character set, including:",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/primitivedata4.png',scale: 1,),
              const Text("\nBoolean",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("- A boolean value represents a true or false condition\n"
                  "- The reserved words true and false are the only valid values for a boolean type",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("\t\t\tboolean done = false;",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              const Text("- A boolean variable can also be used to represent any two states, such as a light bulb being on or off",style: TextStyle(fontSize: 20,height: 1.5)),
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Notes1page3()));
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