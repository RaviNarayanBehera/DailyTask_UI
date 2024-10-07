import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDatePickerScreen extends StatefulWidget {
  const CupertinoDatePickerScreen({super.key});

  @override
  State<CupertinoDatePickerScreen> createState() => _CupertinoDatePickerScreenState();
}

class _CupertinoDatePickerScreenState extends State<CupertinoDatePickerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.of(context).pop('/da');
        }, icon: const Icon(Icons.arrow_back)),
        centerTitle: true,
        title: const Text('Cupertino DatePicker'),
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).pushNamed('/cupertino_timepicker');
          }, icon: const Icon(Icons.arrow_forward))
        ],
      ),
      body: SizedBox(
        height: 500,
        child:CupertinoDatePicker(
          mode: CupertinoDatePickerMode.date,

          onDateTimeChanged: (DateTime value) {

          },),
      ),
    );
  }
}