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
  

)
],



),  
    );
  }
}