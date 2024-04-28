
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tight_app/button_group.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return new HomePageState();
  }
  
}

class HomePageState extends State<HomePage> {

  int _curSelected = 0;
  var animations = ["assets/lotties/3SecondLottie.json", "assets/lotties/6SecondLottie.json", "assets/lotties/10SecondLottie.json"];
  String _curAnimation = "assets/lotties/initial.json";
  bool _autoStart = true;
  bool _repeat = false;

  

  void selectedChange(int curSelected) {
    setState(() {
      _curSelected = curSelected;
      _repeat = true;
      _autoStart = false;
      print(_curSelected);
      _curAnimation = animations[_curSelected];
    });
  }

  void updateStatus() {
    var autoStart = !_autoStart;
    setState(() {
      _autoStart = autoStart;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text("Tight"),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        width: 100,
        height: 1024,
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Lottie.asset(_curAnimation, animate: _autoStart, repeat: _repeat),
            ButtonGroupWidget(selectedChange),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: updateStatus, child: Text(" 开始 "))
          ],
        ),
      ),
    );
  }
  
}