import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(

      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(

          title: Text('Ask Me Anything'),

          backgroundColor: Colors.blue.shade700,
        ),

        body: ball(),
      ),
    ),
  );
}
class ball extends StatefulWidget {
  @override
  _ballState createState() => _ballState();
}

class _ballState extends State<ball> {
  int change=1;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child:Container(
              margin: EdgeInsets.only(
                bottom: 100,
              ),
            padding: EdgeInsets.only(
              top: 30,
              left: 20,
              right: 30,
              bottom: 30,

            ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
              ),

      child: TextField(

      decoration: InputDecoration(


      labelText: 'Enter your Question',
        border: OutlineInputBorder(),


    ),
    autofocus: false,
    ),
            ),
          ),

          Expanded(
    child: Container(
      margin: EdgeInsets.only(
        bottom: 10,
      ),
        padding: EdgeInsets.only(
          bottom: 0,

        ),

            child: FlatButton(

              onPressed: (){

setState(() {
  change=Random().nextInt(5)+1;
});
              },
              child: Image.asset('images/ball$change.png'),
            ),
          ),
          ),
        ],
      ),
    );
  }
}
