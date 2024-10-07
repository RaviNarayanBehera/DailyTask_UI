import 'package:advance_ui/screens/cupertino_date_picker.dart';
import 'package:advance_ui/screens/cupertino_dialog.dart';
import 'package:advance_ui/screens/cupertino_time_picker.dart';
import 'package:advance_ui/screens/date_picker1.dart';
import 'package:advance_ui/screens/time_picker.dart';
import 'package:advance_ui/screens/dialog.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => const DialogScreen(),
        '/timepicker': (context) => const TimepickerScreen1(),
        '/date': (context) => const DatePicker1(),
        '/cupertino_dialog': (context) => const CupertinoDialogScreen(),
        '/cupertino_date_picker': (context) => const CupertinoDatePickerScreen(),
        '/cupertino_timepicker': (context) => const CupertinoTimePickerScreen(),
      },
    );
  }
}
