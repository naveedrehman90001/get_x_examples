import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Screens/counterApp.dart';

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
              onPressed: () {
                Get.defaultDialog(
                    title: "Title",
                    middleText: "This is Text Dialoge",
                    textConfirm: "Confirm",
                    confirmTextColor: Colors.white,
                    textCancel: "Cancel");
              },
              child: Text("Show Dialoge"),
            ),
            RaisedButton(
              child: Text("Go To Counter App"),
              onPressed: () {
                Get.to(
                  CounterApp(),
                  transition: Transition.zoom,
                  duration: Duration(milliseconds: 500),
                );
              },
            ),
            RaisedButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    height: 200,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.nights_stay),
                          title: Text("Dark Theme"),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.wb_sunny_outlined),
                          title: Text("Light Theme"),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        )
                      ],
                    ),
                  ),
                  backgroundColor: Colors.white,
                );
              },
              child: Text("Bottom Sheet"),
            ),
            RaisedButton(
              onPressed: () {},
            ),
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
