import 'package:flutter/material.dart';
import 'package:calculator/constant/constant.dart';
import 'package:calculator/widgets/button.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _history = "";
  String _expression = "";

  void _numClick(String text) {
    setState(() {
      _expression =  _expression + text;
    });
  
  }

  void _allClear(String text) {
    setState(() {
      _expression =  '';
      _history = '';
    });
  }

  void _evaludate(String text){
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      _history = _expression;
      _expression = eval.toString();


    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Calculator",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      backgroundColor: mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 30.0),
            child: Text(
              _history,
              style: TextStyle(fontSize: 24, color: Colors.white70),
            ),
            alignment: Alignment(1, 1),
          ),
          Container(
            padding: EdgeInsets.only(right: 30.0),
            child: Text(
              _expression,
              style: TextStyle(fontSize: 48, color: Colors.white54),
            ),
            alignment: Alignment(1, 1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(
                  value: "AC", colorFill: 0xFFFFFFFF, callback:_allClear),
              Button(
                  value: "C", colorFill: 0xFFFFFFFF, callback: _numClick),
              Button(
                  value: "%", colorFill: 0xFFFFFFFF, callback: _numClick),
              Button(
                  value: "/", colorFill: 0xFFFFFFFF, callback: _numClick),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(value: "7", callback: _numClick),
              Button(value: "8", callback: _numClick),
              Button(value: "9", callback: _numClick),
              Button(
                  value: "*", colorFill: 0xFFFFFFFF, callback: _numClick),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(value: "4", callback: _numClick),
              Button(value: "5", callback: _numClick),
              Button(value: "6", callback: _numClick),
              Button(
                  value: "-", colorFill: 0xFFFFFFFF, callback: _numClick),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(value: "1", callback: _numClick),
              Button(value: "2", callback: _numClick),
              Button(value: "3", callback: _numClick),
              Button(
                  value: "+", colorFill: 0xFFFFFFFF, callback: _numClick),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(value: "", callback: _numClick),
              Button(value: "00", callback: _numClick),
              Button(value: "", callback: _numClick),
              Button(
                  value: "=", colorFill: 0xFFFFFFFF, callback: _evaludate),
            ],
          ),
        ],
      ),
    );
  }
}
