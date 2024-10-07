import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDialogScreen extends StatefulWidget {
  const CupertinoDialogScreen({super.key});

  @override
  State<CupertinoDialogScreen> createState() => _CupertinoDialogScreenState();
}

class _CupertinoDialogScreenState extends State<CupertinoDialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text('Cupertino Dialog'),
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).pushNamed('/cupertino_date_picker');
          }, icon: Icon(Icons.arrow_forward_outlined))
        ],
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            showCupertinoModalPopup(
              context: context,
              builder: (context) =>
                  CupertinoActionSheet(
                    title: const Text(
                      "Favourite Dessert",
                      style: TextStyle(height: 1),
                    ),
                    message: const Text(
                        "Please select the best dessert from the list below",
                        style: TextStyle(height: 2)),
                    cancelButton: CupertinoActionSheetAction(
                      isDefaultAction: true,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                    ),
                    actions: <CupertinoActionSheetAction>[
                      CupertinoActionSheetAction(
                        isDefaultAction: true,
                        child: const Text(
                          'Profiteroles',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 20
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      CupertinoActionSheetAction(
                        child: const Text(
                          'Cannolis',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 20
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      CupertinoActionSheetAction(
                        child: const Text(
                          'Trifle',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,fontSize: 20
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
            );
          },
          child: Container(
            height: 50,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.grey.shade500,
              borderRadius:BorderRadius.circular(10),
            ),
            child: Center(child: Text('Click Here')),
          ),),
      ),

    );
  }
}