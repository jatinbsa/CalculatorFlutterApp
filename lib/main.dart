import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Calculator',
      theme: new ThemeData(
          primarySwatch: Colors.red,
      ),
      home: new Calculator(),
    );

  }
}

class Calculator extends StatefulWidget {

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var num1=0,num2=0,sum=0;
  final TextEditingController t1=new TextEditingController();
  final TextEditingController t2=new TextEditingController();
  void doAddition(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
        sum=num1+num2;
    });
  }
  void doSubtraction(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1-num2;
    });
  }
  void doMultiplication(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1*num2;
    });
  }
  void doDivide(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1 ~/ num2;
    });
  }
  void doClear(){
    setState(() {
      num1 =0;
      num2 =0;
      t1.text="0";
      t2.text="0";
      sum=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(

        padding: const EdgeInsets.all(40.0),
        child: new Column(

         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           new Text("Output : $sum",
           style: new TextStyle(
             fontSize: 30.0,
             color: Colors.purple,
             fontWeight:FontWeight.bold
           ),
           ),
           new TextField(

             keyboardType:TextInputType.number ,
             decoration:  new InputDecoration(
               hintText: "Enter number 1"
             ),
             controller: t1,
           ),
           new TextField(
             keyboardType:TextInputType.number ,
             decoration:  new InputDecoration(
                 hintText: "Enter number 2"
             ),
             controller: t2,
           ),
           new Padding(padding: const EdgeInsets.only(top: 20.0)),
           new Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               new MaterialButton(
                 child: new Text("+",style: new TextStyle(
                   color: Colors.white
                 ),),
                 onPressed:() {
                   doAddition();
                 },
                 color: Colors.greenAccent,
                 splashColor:Colors.red,
               ),
               new MaterialButton(
                 child: new Text("-",style: new TextStyle(
                     color: Colors.white
                 )),
                 onPressed:() {},
                 color: Colors.greenAccent,
                 splashColor:Colors.red,
               ),

             ],
           ),
           new Padding(padding: const EdgeInsets.only(top: 20.0)),

           new Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               new MaterialButton(
                 child: new Text("*",style: new TextStyle(
                     color: Colors.white
                 )),
                 onPressed:() {},
                 color: Colors.greenAccent,
                 splashColor:Colors.red,
               ),
               new MaterialButton(
                 child: new Text("/",style: new TextStyle(
                     color: Colors.white
                 )),
                 onPressed:() {},
                 color: Colors.greenAccent,
                 splashColor:Colors.red,
               ),

             ],
           ),
           new Padding(padding: const EdgeInsets.only(top: 20.0)),
           new Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               new MaterialButton(
                 child: new Text("clear",style: new TextStyle(
                     color: Colors.white
                 )),
                 onPressed:() {
                   doClear();
                 },
                 color: Colors.greenAccent,
                 splashColor:Colors.red,
               )
             ],
           )
         ],
       ),
      ),
    );
  }
}

