import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_example/controller/counterController.dart';

class CounterApp extends StatelessWidget {
  CounterController counterController = Get.put(CounterController());

  _body() {
    return Container(
      child: Center(
        child: Obx(() => Text("this is My Counter ${counterController.count}")),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter app"),
      ),
      body: _body(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              counterController.incrementCount();
            },
          ),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              counterController.decrementCounter();
            },
          ),
        ],
      ),
    );
  }
}
