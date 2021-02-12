import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  _body() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Get.snackbar(
                  "title",
                  "This is my dummy Message",
                  backgroundColor: Colors.white,
                );
              },
              child: Text("Show Snackbar"),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text("Show Dialoge"),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar & BottomSheet"),
      ),
      body: _body(),
    );
  }
}
