import 'package:flutter/material.dart';
import 'package:calculator/constant/constant.dart';
import 'package:calculator/widgets/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("My Calculator",textAlign: TextAlign.center,),
       backgroundColor: Colors.transparent,
       centerTitle: true,
     ),
     backgroundColor: mainColor,
     body: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: <Widget>[
         Padding(
           padding: EdgeInsets.all(8.0),
           child: TextFormField(
             textAlign: TextAlign.end,
              style: TextStyle(
               color: Colors.white,
               fontSize: 32,
               fontWeight: FontWeight.w300,
             ),
             keyboardType: TextInputType.number,
             decoration: InputDecoration(
               border: InputBorder.none,
               hintText: "Type Numbers",
               hintStyle: TextStyle(
                 fontWeight: FontWeight.w300,
                 color: Colors.white.withOpacity(0.8)
               )
             ),
            
           ),
         ),
         
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children:<Widget> [
              Button(value:"AC",colorFill: 0xFFFFFFFF,),
              Button(value:"C",colorFill: 0xFFFFFFFF),
              Button(value:"%",colorFill: 0xFFFFFFFF),
              Button(value:"/",colorFill: 0xFFFFFFFF),
             ],
           ),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children:<Widget> [
              Button(value:"7",),
              Button(value:"8"),
              Button(value:"9"),
              Button(value:"x",colorFill: 0xFFFFFFFF),
             ],
           ),


Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children:<Widget> [
              Button(value:"4",),
              Button(value:"5"),
              Button(value:"6"),
              Button(value:"-",colorFill: 0xFFFFFFFF),
             ],
           ),


Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children:<Widget> [
              Button(value:"1",),
              Button(value:"2"),
              Button(value:"3"),
              Button(value:"+",colorFill: 0xFFFFFFFF),
             ],
           ),
Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children:<Widget> [
              Button(value:""),
              Button(value:"00",),
              Button(value:""),
              Button(value:"=",colorFill: 0xFFFFFFFF),
             ],
           ),
         
       ],
     ), 
    );
  }
}