import 'package:audioplayer/audioplayer.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () => player.play("assets/note1.wav"),
              child: Container(color: Colors.red,),
            ),
            FlatButton(
              onPressed: () => player.play("assets/note2.wav"),
              child: Container(color: Colors.grey,),
            ),
            FlatButton(
              onPressed: () => player.play("assets/note3.wav"),
              child: Container(color: Colors.yellow,),
            ),
            FlatButton(
              onPressed: () => player.play("assets/note4.wav"),
              child: Container(color: Colors.blue,),
            ),
            FlatButton(
              onPressed: () => player.play("assets/note5.wav"),
              child: Container(color: Colors.green,),
            ),
            FlatButton(
              onPressed: () => player.play("assets/note6.wav"),
              child: Container(color: Colors.pink,),
            ),
            FlatButton(
              onPressed: () => player.play("assets/note7.wav"),
              child: Container(color: Colors.orange,),
            ),
          ],
        ),
      ),
    );
  }
}
