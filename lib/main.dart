import 'package:flutter/material.dart';
import 'package:valuenotifier/getx.dart';
import 'package:valuenotifier/zomatocontroller.dart';
import 'package:valuenotifier/zomatomenu.dart';

void main()
{
  runApp(MaterialApp(
    home: zomato1(),
  ));
}


class value extends StatelessWidget {


  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  ValueNotifier<int> sum = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> b = ValueNotifier(0);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ValueListenableBuilder(builder: (context, value, child) {
            return Text("$value");
          },valueListenable: b),
          ElevatedButton(onPressed: () {
            b.value++;
          }, child: Text("INCREMENT")),
          TextField(controller: t1),
          TextField(controller: t2),
          ElevatedButton(onPressed: () {
            String a1 = t1.text;
            String b1 = t2.text;
            sum.value = int.parse(a1)+int.parse(b1);
          }, child: Text("SUM")),
          ValueListenableBuilder(builder: (context, val, child) {
            return Text("Sum = ${val}");
          },valueListenable: sum)
        ],
      ),
    );
  }
}

