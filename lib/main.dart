import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
void sound (int soundnumber){
  final player = AudioCache();
  player.play('note$soundnumber.wav');
}
Expanded buildKey({required Color color, required int soundNumber}){
  return Expanded(
    child: TextButton(

      onPressed: (){
        sound(soundNumber);
        },
      child: Container(color: color)
      ),
    );
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildKey(color: Colors.deepPurple, soundNumber: 1),
                buildKey(color: Colors.indigo.shade800, soundNumber: 2),
                buildKey(color: Colors.blue, soundNumber: 3),
                buildKey(color: Colors.green, soundNumber: 4),
                buildKey(color: Colors.yellow, soundNumber: 5),
                buildKey(color: Colors.orange, soundNumber: 6),
                buildKey(color: Colors.red, soundNumber: 7),
              ],
            ),
        ),
      ),
    );
  }
}