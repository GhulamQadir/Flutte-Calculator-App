
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
              constraints: BoxConstraints.tightFor(width: 50, height: 50),
              child: ElevatedButton(onPressed: (){
                abc(texttt);
              }, 
              child: Text(texttt),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(color: Colors.red)
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
              color: Colors.blueGrey,
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
            ),
            ),
          backgroundColor: Color(0xffdce0e6),
          ),
        body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 300,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "$result",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                btn("1"),
                btn("2"),
                btn("3"),
                btn("+"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                btn("4"),
                btn("5"),
                btn("6"),
                btn("-"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                btn("7"),
                btn("8"),
                btn("9"),
                btn("*"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                btn("0"),
         ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: 50, height: 50),
                child: ElevatedButton(onPressed: output, child: Text('='),
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: Colors.red)
      )))
),),
                ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: 50, height: 50),
                child: ElevatedButton(onPressed: clearr, child: Text('Clear'),
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: Colors.red)
      )))
),),
                btn("/"),
         ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: 50, height: 50),
                child: ElevatedButton(onPressed: clearOne, child: Text('Clear One'),
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: Colors.red)
      )))
),),              ],
            ),
          ],
        ),
      )),
    );
  }
}