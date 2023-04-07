import 'package:flutter/material.dart';

import '../view/mainscreen.dart';

class Notes1page3 extends StatefulWidget {
  const Notes1page3({super.key});

 @override
  State<Notes1page3> createState() => _Notes1page3State();
}

class _Notes1page3State extends State<Notes1page3> {
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
              const Text("Expressions",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              const Text("- Expression: A data value, or a set of operations that compute a data value.",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("Example: 1 + 4 * 3",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              const Text("- The simplest expression is a literal value."
                  "A more complex expression can have operators and/or parentheses.",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("\n5 common arithmetic operators",style: TextStyle(fontSize: 20,height: 1.5,decoration: TextDecoration.underline)),
              Image.asset('assets/images/expression.png',scale: 1,),
              const Text("\nEvaluating expressions",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("When your Java program executes and encounters a line with an expression, the expression is evaluated (its value is computed).",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("The expression 3 * 4 is evaluated to obtain 12.\nSystem.out.println(3 * 4) prints 12, not 3 * 4.",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              const Text("\nWhen an expression contains more than one operator of the same kind, it is evaluated left-to-right.",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("Example: 1 + 2 + 3 is (1 + 2) + 3 which is 6\nExample: 1 - 2 - 3 is (1 - 2) - 3 which is -4\n(not the same as 1 - (2 - 3) which is 2)",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              const Text("\nInteger division with /",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("Strangely, 14 / 4 evaluates to 3, not 3.5\n"
                  "- In Java, when we divide integers, the result is also an integer: the integer quotient.\n"
                  "- The integer quotient of dividing 14 by 4 is 3\n"
                  "- The integer remainder of dividing 14 by 4 is 2.\n"
                  "Imagine that you were doing long division:",style: TextStyle(fontSize: 20,height: 1.5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/expression2.png',scale: 1,),
                ],
              ),
              const Text("\nInteger remainder with %",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("The % operator computes the remainder from a division of integers.\n"
                  "- Example: 14 % 4 is 2",style: TextStyle(fontSize: 20,height: 1.5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/expression3.png',scale: 1,),
                ],
              ),
              const Text("\nOperator precedence",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("Precedence: Order in which operations are computed in an expression. Multiplicative operators have a higher level of precedence than additive operators.",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("For example, * has higher precedence than +, just like on a scientific calculator, so 1 + 3 * 4 is 13.",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              const Text("Parentheses can be used to force a certain order of evaluation.",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("(1 + 3) * 4 is 16.",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              const Text("\nPrecedence Rules",style: TextStyle(fontSize: 20,height: 1.5, decoration: TextDecoration.underline)),
              const Text("- The binary arithmetic operators *, /, and %, have lower precedence than the unary operators +, -, ++, --, and !, but have higher precedence than the binary arithmetic operators + and -",style: TextStyle(fontSize: 20,height: 1.5)),
              Image.asset('assets/images/expression4.png',scale: 1,),
              const Text("- When binary operators have equal precedence, the operator on the left acts before the operator(s) on the right",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("int number = 5 * 2 / 10;\nSystem.out.println(number);",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              const Text("Output: 1",style: TextStyle(fontSize: 20,height:1.5,color: Colors.red)),
              const Text("- When unary operators have equal precedence, the operator on the right acts before the operation(s) on the left.\n"
                  "- Even when parentheses are not needed, they can be used to make the code clearer.",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("balance + (interestRate * balance)",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              const Text("- Spaces also make code clearer",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("balance + interestRate*balance",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              const Text("\nReal numbers (double)",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("- The expressions we have seen so far used integers (type int), but Java also can manipulate real numbers with a decimal point (type double).\n"
                  "- The operators we saw, + - * / % ( ) , all work for real numbers as well.\n"
                  "- The same rules of precedence that apply to integers also apply to real numbers.",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("() before * / % before + -",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              const Text("- The / produces an exact answer when used on real numbers.",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("Example: 15.0 / 2.0 is 7.5",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              const Text("\nMixing integers and reals",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("When a Java operator is used on an integer and a real number, the result is a real number.",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("Example: 3 * 4.2 is 12.6\nExample: 1 + 1.0 is 2.0",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              const Text("\nSpecialized Assignment Operators",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("Assignment operators can be combined with arithmetic operators (including -, *, /, and %, discussed later).",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("amount = amount + 5;",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              const Text("can be written as",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("amount += 5;",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              const Text("yielding the same results.",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("\nIncrement and Decrement Operators",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("- Used to increase (or decrease) the value of a variable by 1\n"
                  "- Easy to use, important to recognize\n"
                  "- The increment operator",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("count++ or ++count",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              const Text("The decrement operator",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("count-- or --count",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              const Text("\nIncrement and Decrement Operators in Expressions",style: TextStyle(fontSize: 22,height: 1.5, color: Color.fromARGB(255, 214, 7, 255),fontWeight: FontWeight.bold)),
              const Text("After executing:",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("int m = 4;\nint result = 3 * (++m)\nresult has a value of 15 and m has a value of 5",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/expression5.png',scale: 1,),
                ],
              ),
              const Text("After executing:",style: TextStyle(fontSize: 20,height: 1.5)),
              const Text("int m = 4;\nint result = 3 * (m++)\nresult has a value of 12 and m has a value of 5",style: TextStyle(fontSize: 20,height: 1.5,color: Colors.green)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/expression6.png',scale: 1,),
                ],
              ),
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
            }});
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