import 'package:flutter/material.dart';

class MyHomePagePersistent extends StatelessWidget {
  void _showPersistentBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.grey[200],
          child: ListView(
            children: [
              const Center(
                child: Text(
                  'This is a Persistent BottomSheet!',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            const  SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Close the Persistent BottomSheet when this button is pressed
                  Navigator.of(context).pop();
                },
                child:const Text('Close'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Persistent BottomSheet Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showPersistentBottomSheet(context),
          child: Text('Show Persistent BottomSheet'),
        ),
      ),
    );
  }
}
