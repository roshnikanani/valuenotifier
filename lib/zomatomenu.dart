import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valuenotifier/zomatocontroller.dart';

class zomato1 extends StatelessWidget {
  const zomato1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    zomato z=Get.put(zomato());
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Obx(() => CheckboxListTile(title: Text("500"),onChanged: <bool>(value) {
            z.check(1, 500, value);
          },value: z.t.value,)),
          Obx(() => CheckboxListTile(title: Text("200"),onChanged: <bool>(value) {
            z.check(2, 200, value);
          },value: z.t1.value,)),
          Obx(() => CheckboxListTile(title: Text("750"),onChanged: <bool>(value) {
            z.check(3, 750, value);
          },value: z.t2.value,)),
          Obx(() => Text("Total = ${z.amt}"))
        ],
      ),
    );
  }
}

