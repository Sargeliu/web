// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:web/controllers/counterController.dart';
import 'package:web/screens/other.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());
    return Scaffold(
      body: Obx(() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Click: ${counterController.counter}'),),
          SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(onPressed: () {
              Get.to(OtherScreen());
            }, child: Text('Open Other Screen')),
          )
        ],),),
        floatingActionButton: FloatingActionButton(onPressed: () {
          counterController.increment();
        },
        child: Icon(Icons.add),),
    );
  }
}