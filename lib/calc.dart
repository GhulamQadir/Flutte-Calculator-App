
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String result = "";


  Widget btn(texttt){
    return ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 82, height: 62),
              child: ElevatedButton(onPressed: (){
                abc(texttt);
              }, 
              child: Text(texttt, style: TextStyle(fontSize: 20),),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
              side: BorderSide(color: Colors.white),
    )
  )
)
              ),);
  }

  abc(texttt) {
    setState(() {
      result = result + texttt;
    });
  }

  clearr() {
    setState(() {
      result = "";
    });
  }
  clearOne(){
    setState(() {
    result = result.substring(0, result.length - 1);
    if(result == ""){
      result = "0";
    }

        });
  }

  output() {
    Parser p = Parser();
    Expression exp = p.parse(result);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      result = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Center(
            child: Text("Calculator App",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
            ),
            ),
          backgroundColor: Color(0xffdce0e6),
          ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.black,
            // height: 2000,
            child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "$result",
                    style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                    Row(
                      children: [
                        ConstrainedBox(
                        constraints: BoxConstraints.tightFor(width: 82, height: 62),
                        child: ElevatedButton(onPressed: clearr, child: Text('C'),
                        style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                        side: BorderSide(color: Colors.white)
      )))
),),
                    btn("/"),
                    btn("*"),
                    ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 82, height: 62),
                    child: ElevatedButton(onPressed: clearOne, child: Icon(Icons.close_outlined),
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white)
      )))
),),                  ],
                    ),

                Row(
                  children: [
                    btn("7"),
                    btn("8"),
                    btn("9"),
                    btn("-"),
                  ],
                ),
                Row(
                  children: [
                    btn("4"),
                    btn("5"),
                    btn("6"),
                    btn("+"),
                  ],
                ),
                Row(
                  children: [
                    btn("1"),
                    btn("2"),
                    btn("3"),
                    ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 82, height: 62),
                    child: ElevatedButton(onPressed: output, child: Text('='),
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.cyan),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                    side: BorderSide(color: Colors.white)
      )))
),),
                    ],
                ),
                Row(
                  children: [
                    btn("."),
                    btn("0"),
                    btn("00"),
              ],
                ),
              ],
            ),
      ),
          ),
        )),
    );
  }
}