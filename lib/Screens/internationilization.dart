import 'package:flutter/material.dart';

class Internationilization extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _body() {
      return Container(
        child: Center(
          child:
              Text("Hello , this is naveed rehman bangash , i am 20 years old"),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("I did this code"),
      ),
      body: _body(),
    );
  }
}
