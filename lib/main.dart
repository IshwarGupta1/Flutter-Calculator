import 'package:flutter/material.dart';
void main()
{
 runApp(MaterialApp(
   home:home(),
 ));
}
// ignore: camel_case_types, must_be_immutable
class home extends StatefulWidget {
  @override
 _homeState createState() => new _homeState();
  }

// ignore: camel_case_types
class _homeState extends State <home>{
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }
  void doMinus() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }
  void doMulti() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }
  void dodivide() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }
  void doRem() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 % num2;
    });
  }
  void doclear() {
    setState(() {
      t1.text="0";
      t2.text="0";
    });
  }
  
@override
  // ignore: missing_return
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: new AppBar(
         title: new Text("Calculator"),
       ),
       body: new Container(
         child:Padding(
           padding: const EdgeInsets.all(80.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               new Text(
                 "Calculate: $sum",
                 style: new TextStyle(fontSize:20.0,fontWeight: FontWeight.bold,color: Colors.teal),
               ),
               new TextField(
                 keyboardType: TextInputType.number,
                 decoration: new InputDecoration(hintText:"Enter the number"),
                   controller: t1,
               ),
               new TextField(
                 keyboardType: TextInputType.number,
                 decoration: new InputDecoration(hintText:"Enter the number"),
                     controller: t2,
               ),
               new Padding(padding: const EdgeInsets.only(top:20.0),
               ),
           new Expanded(
             child: new Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: <Widget>[
                       new MaterialButton(
                         child: new Text("+"),
                         color: Colors.teal,
                         onPressed: doAddition,
                       ),
                       new MaterialButton(
                         child: new Text("-"),
                         color: Colors.teal,
                         onPressed: doMinus,
                       ),
                     ],
                   ),
           ),
               new Expanded(
                 child: new Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: <Widget>[
                     new MaterialButton(
                       child: new Text("*"),
                       color: Colors.teal,
                       onPressed: doMulti,
                     ),new MaterialButton(
                       child: new Text("/"),
                       color: Colors.teal,
                       onPressed: dodivide,
                     ),
                   ],
                 ),
               ),
               new Expanded(
               child: new Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget>[
                   new MaterialButton(
                     child: new Text("%"),
                     color: Colors.teal,
                     onPressed: doRem,
                   ),
                   new MaterialButton(
                     child: new Text("C"),
                     color: Colors.grey,
                     onPressed: doclear,
                   ),
                 ],
               ),
               ),
             ],
           ),
         ),
       ),
     );
  }
}
