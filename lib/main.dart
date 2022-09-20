import 'package:flutter/material.dart';
void main()
{
  runApp(Calculator());
}
class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SimpleCalculator(),


    );
  }
}
class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({super.key});

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text('Simple Calculator '),),
body: Column(
children:<Widget> [
Container(
  alignment:Alignment.centerRight,
  padding: EdgeInsets.fromLTRB(10,20, 10, 0),
  child: Text("0",style: TextStyle(fontSize: 38),),
  

),
Container(
  alignment:Alignment.centerRight,
  padding: EdgeInsets.fromLTRB(10,30, 10, 0),
  child: Text("0",style: TextStyle(fontSize: 48),),//To display the zero on the screen
  

),
//Dividing the screen into halves
Expanded //Top part of the screen
(child:Divider()




),
//Bottom part
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Container(
      width: MediaQuery.of(context).size.width*.75,//Covering the 75 percent of the screen 
      child: Table(
          children: [
            TableRow(
              children: [
                Container(

                    height: MediaQuery.of(context).size.height*0.1,
                    color: Colors.redAccent,
                    child:FlatButton()


                ),
              ],
            ),



          ],
      ),
    ),



  ],
),





],



),  
    );
  }
}