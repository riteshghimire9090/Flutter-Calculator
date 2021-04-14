import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalculatorPage(),
    );
  }
}

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  int result = 0;

  String userInput  = "";

  TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: inputController,
              textAlign: TextAlign.right,
              readOnly: true,
              showCursor: false,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "$result",

                style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 55.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    userInput =" ";
                    inputController.text = userInput;
                    setState(() {
                      result=0;
                    });
                  },
                  child: Text(
                    "AC",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    userInput = userInput.substring(0,userInput.length-1);
                    inputController.text  = userInput;
                  },
                  child: Text(
                    "DEL",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    userInput = userInput + "%";
                    inputController.text = userInput;
                  },
                  child: Text(
                    "%",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    userInput = userInput + "/";
                    inputController.text = userInput;
                  },
                  child: Text(
                    "/",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 65.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    userInput +="7";
                    inputController.text = userInput;

                  },
                  child: Text(
                    "7",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    userInput +="8";
                    inputController.text = userInput;
                  },
                  child: Text(
                    "8",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    userInput +="9";
                    inputController.text = userInput;
                  },
                  child: Text(
                    "9",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    userInput = userInput + "*";
                    inputController.text = userInput;
                  },
                  child: Text(
                    "*",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 65.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    userInput +="4";
                    inputController.text = userInput;
                  },
                  child: Text(
                    "4",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    userInput +="5";
                    inputController.text = userInput;
                  },
                  child: Text(
                    "5",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    userInput +="6";
                    inputController.text = userInput;
                  },
                  child: Text(
                    "6",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    userInput = userInput + "-";
                    inputController.text = userInput;
                  },
                  child: Text(
                    "-",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 65.0,
            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(

                  onTap: (){
                    userInput +="1";
                    inputController.text = userInput;
                  },

                  child: Text(
                    "1",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    userInput +="2";
                    inputController.text = userInput;
                  },
                  child: Text(
                    "2",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    userInput +="3";
                    inputController.text = userInput;
                  },
                  child: Text(
                    "3",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    userInput = userInput + "+";
                    inputController.text = userInput;
                  },
                  child: Text(
                    "+",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 65.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Text(
                    "+-",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    userInput +="0";
                    inputController.text = userInput;
                  },
                  child: Text(
                    "0",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    userInput = userInput + ".";
                    inputController.text = userInput;
                  },
                  child: Text(
                    ".",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print(userInput);
                    Parser p = Parser();
                    Expression exp = p.parse(userInput);
                    ContextModel cm = ContextModel();

                    // Evaluate expression:
                    double eval = exp.evaluate(EvaluationType.REAL, cm);



                    print(result);
                    setState(() {
                      result  = eval.toInt();
                    });

                  },
                  child: Text(
                    "=",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 65.0,
            ),

          ],
        ),
      ),
    );
  }
}
