import 'package:flutter/material.dart';



class MyHomePage1 extends StatefulWidget {
 const MyHomePage1({Key? key, }) : super(key: key);


  @override
  _MyHomePage1State createState() => new _MyHomePage1State();
}

class _MyHomePage1State extends State<MyHomePage1> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        
      ),
      floatingActionButton:  FloatingActionButton(
        onPressed: (){
          _settingModalBottomSheet(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}


void _settingModalBottomSheet(context){
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){
          return Container(
            child:  Wrap(
            children: <Widget>[
 ListTile(
            leading: const Icon(Icons.music_note),
            title: const Text('Music'),
            onTap: () => {}          
          ),
           ListTile(
            leading: const Icon(Icons.videocam),
            title: const Text('Video'),
            onTap: () => {},          
          ),
            ],
          ),
          );
      }
    );
}