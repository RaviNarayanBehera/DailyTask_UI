import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTimePickerScreen extends StatefulWidget {
  const CupertinoTimePickerScreen({super.key});

  @override
  State<CupertinoTimePickerScreen> createState() => _CupertinoTimePickerScreenState();
}

TextEditingController _timeController = TextEditingController();

class _CupertinoTimePickerScreenState extends State<CupertinoTimePickerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: const Icon(Icons.arrow_back)),
        centerTitle: true,
        title: const Text('Cupertino TimePicker'),
      ),
      body: SizedBox(
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              ' ${_timeController.text}',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 50,
            ),
            CupertinoTimerPicker(
              onTimerDurationChanged: (value) {
                _timePicker(value);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _timePicker(Duration value) {
    timeIos = value;

    if (timeIos != null) {
      setState(() {
        _timeController.text =
            timeIos.toString().split('.').first.padLeft(8, "0");
      });
    }
  }
}

Duration? timeIos;