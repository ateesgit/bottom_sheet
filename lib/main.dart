// import 'package:bottom_sheet/bottomsheet.dart';
// import 'package:bottom_sheet/model_bottomsheet.dart';
import 'package:bottom_sheet/persistent_bottomsheet.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: MyHomePagePersistent(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return  Container(
          height: 200,
          child: Center(
            child: Text(
              'This is a BottomSheet!Welcome to Flutter',
              style: TextStyle(fontSize: 20),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomSheet Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showBottomSheet(context),
          child: const Text('Show BottomSheet'),
        ),
      ),
    );
  }
}
