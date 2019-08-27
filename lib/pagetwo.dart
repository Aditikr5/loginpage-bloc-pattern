import 'package:flutter/material.dart';
class PageTwo extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Page 2"),
    ),
    body: Center(
      child:RaisedButton(
        color: Colors.tealAccent,
        onPressed:(){ Navigator.pop(context);
        },

    ),
    )
    );
  }
}