// import 'package:flutter/material.dart';





// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }
// class _HomeState extends State<Home> {
// btnClicked(String btnval){

// }
//   Widget custombutton(String btnval){
//     return Expanded(
//       child: ElevatedButton(
//         onPressed: btnClicked(btnval), 
//         child: Text("$btnval")
//         )
//       );
//   }

// var num = "";
// var operator = "";
// var num2 = "";
//   one(){
//     setState(() {
//           num = "1";
//         });
//   }
//   two(){
//     setState(() {
//           num = "2";
//         });
//   }
//   three(){
//     setState(() {
//           num = "3";
//         });
//   }
//   four(){
//     setState(() {
//           num = "4";
//         });
//   }
//   five(){
//     setState(() {
//           num = "5";
//         });
//   }
//   six(){
//     setState(() {
//           num = "6";
//         });
//   }
//   seven(){
//     setState(() {
//           num = "7";
//         });
//   }
//   eight(){
//     setState(() {
//           num = "8";
//         });
//   }
//   nine(){
//     setState(() {
//           num = "9";
//         });
//   }
//   equal(){
//     setState(() {
//           num = "=";
//         });
//   }
//   zero(){
//     setState(() {
//           num = "0";
//         });
//   }
//   add(){
//     setState(() {
//           num = "+";
//         });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Center(
//             child: Text("Calculator App",
//             style: TextStyle(
//               color: Colors.blueGrey,
//               fontSize: 30,
//               fontWeight: FontWeight.bold
//             ),)),
//           backgroundColor: Color(0xffdce0e6),
//         ),
//         body: Center(
//           child: Column(
//               children: [
//                 SizedBox(height: 100,),
//                 Center(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(num,style: TextStyle(fontSize: 30),),
//                         Text(operator,style: TextStyle(fontSize: 30),),
//                         Text(num2,style: TextStyle(fontSize: 30),),
//                       ]),
//                 ),
//                 Center(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       SizedBox(height: 60,),
//                       custombutton("1"),
//                       SizedBox(height: 10,),
//                           ElevatedButton(
//                             child: Text("2"),
//                             onPressed: two,),
//                       SizedBox(height: 10,),
//                           ElevatedButton(
//                             child: Text("3"),
//                             onPressed: three,),
//                     ],
//                   ),
//                 ),
                   
//                     Center(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           SizedBox(height: 10,),
//                       ElevatedButton(
//                         child: Text("4"),
//                         onPressed: four,),
//                                         SizedBox(height: 10,),
//                       ElevatedButton(
//                         child: Text("5"),
//                         onPressed: five,),
//                                         SizedBox(height: 10,),
//                       ElevatedButton(
//                         child: Text("6"),
//                         onPressed: six,),
//                         ],
//                       ),
//                     ),
                    
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SizedBox(height: 70,),
//                         ElevatedButton(
//                           child: Text("7"),
//                           onPressed: seven,),
//                                           SizedBox(height: 10,),
//                         ElevatedButton(
//                           child: Text("8"),
//                           onPressed: eight,),
//                 SizedBox(height: 10,),
//                         ElevatedButton(
//                           child: Text("9"),
//                           onPressed: nine,),
//                       ],
//                     ),
                    
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SizedBox(height: 30,),
//                         ElevatedButton(
//                           child: Text("+"),
//                           onPressed: add,),
//                         SizedBox(height: 10,),
//                         ElevatedButton(
//                           child: Text("0"),
//                           onPressed: zero,),
//                         SizedBox(height: 10,),
//                         ElevatedButton(
//                           child: Text("="),
//                           onPressed: equal,),
//                       ],
//                     ),
//                   ],
                
              
//             ),
//         ),
      
//       ),
//     );
//   }  
//   }
