import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valuenotifier/controller.dart';

class getx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Controller c = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(controller: c.t1,),
          TextField(controller: c.t2,),
          ElevatedButton(onPressed: () {
            String a = c.t1.text;
            String b = c.t2.text;
            c.sum(a, b);
          }, child: Text("Sum")),
          Obx(() => Text("${c.ans}"))
        ],
      ),
    );
  }
}
