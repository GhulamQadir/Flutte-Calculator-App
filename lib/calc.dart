import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calc2 extends StatefulWidget {
  @override
  _Calc2State createState() => _Calc2State();
}

class _Calc2State extends State<Calc2> {
  String result = "";
  String history = "";
   Widget btn(text){
    return ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 82, height: 62),
              child: ElevatedButton(onPressed: (){
                abc(text);
              }, 
              child: Text(text, style: TextStyle(fontSize: 22),),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color(0xff070726)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
              // side: BorderSide(color: Colors.white),
    )
  )
)
              ),);
              }
              Widget operationBtn(text){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: 65, height: 62),
                child: ElevatedButton(onPressed: (){
                  abc(text);
                }, 
                child: Text(text, style: TextStyle(fontSize: 22, color: Colors.blue),),
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
                // side: BorderSide(color: Colors.white),
    )
  )
)
                ),),
              );
              }
  abc(text) {
    setState(() {
      result = result + text;
    });
  }

  clearr() {
    setState(() {
      result = "";
      history = "";
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
      history = result;
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
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text("Calculator App",
              style: TextStyle(
                color: Color(0xff070726),
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            ),
          backgroundColor: Colors.white,
          ),
        body: SingleChildScrollView(
          child: Container(
            color: Color(0xff070726),

            child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "$history", 
                    style: TextStyle(fontSize: 16, color: Colors.white),)),
                    SizedBox(height: 10,),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "$result",
                    style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ConstrainedBox(
                          constraints: BoxConstraints.tightFor(width: 65, height: 62,),
                          child: ElevatedButton(onPressed: clearr, child: Text('C', style: TextStyle(fontSize: 22),),
                          style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
      ),),),),),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ConstrainedBox(
                      constraints: BoxConstraints.tightFor(width: 65, height: 62),
                      child: ElevatedButton(onPressed: clearOne, child: Icon(Icons.arrow_back),
                      style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),

      )))
),),),                      
                    operationBtn("%"),                   
                    operationBtn("/"),
                    ],
                    ),

                Row(
                  children: [
                    btn("7"),
                    btn("8"),
                    btn("9"),
                    operationBtn("*"),
                  ],
                ),
                Row(
                  children: [
                    btn("4"),
                    btn("5"),
                    btn("6"),
                    operationBtn("-"),
                  ],
                ),
                Row(
                  children: [
                    btn("1"),
                    btn("2"),
                    btn("3"),
                    operationBtn("+"),
                    ],
                ),
                Row(
                  children: [
                    btn("."),
                    btn("0"),
                    btn("00"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ConstrainedBox(
                      constraints: BoxConstraints.tightFor(width: 65, height: 62),
                      child: ElevatedButton(onPressed: output, child: Text('=', style: TextStyle(fontSize: 22),),
                      style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.cyan),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                      // side: BorderSide(color: Colors.white)
      )))
),),
                    ),              ],
                 ) ]
            ),
      ),
          ),
        )),
    );
  }
}