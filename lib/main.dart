import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());
AudioCache audioPlayer = AudioCache();
class XylophoneApp extends StatelessWidget {
  final audioPlayer = AudioCache();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
           NoteTile(color: Colors.red,note: 1,),
           NoteTile(color: Colors.orange,note: 2,),
           NoteTile(color: Colors.yellow,note: 3,),
           NoteTile(color: Colors.greenAccent,note: 4,),
           NoteTile(color: Colors.green,note: 5,),
           NoteTile(color: Colors.blue,note: 6,),
           NoteTile(color: Colors.purple,note: 7,),
         ],
        ),
      ),
    );
  }
}

class NoteTile extends StatelessWidget {
  final Color color;
  final int note;
  NoteTile({this.note,this.color});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(onPressed: (){
      audioPlayer.play('note$note.wav');
    }, 
    color: color,
    child: null,
    ),
      );
  }
}
