import 'package:flutter/material.dart';


class ButtonGroupWidget extends StatefulWidget {
  final Function(int) callbackFn;

  ButtonGroupWidget(this.callbackFn);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ButtonGroupState();
  }
  
}

class ButtonGroupState extends State<ButtonGroupWidget> {
  int _curSelected = 0;


  Widget renderLeftButton() {
    return Container(
      width: 100.0,
      height: 60.0,
      alignment: Alignment.center,
      // backgroundColor: _curSelected == 0 ? Colors.blue : Colors.white,
      child: GestureDetector(
        onTap: () {
          print("left button");
          onButtonStateChanged(0);
        },
        child:Text(
          "简单",
          textAlign: TextAlign.center, 
          selectionColor: Colors.blue,
          style: TextStyle(
            color: _curSelected == 0 ? Colors.white : Colors.grey,
            backgroundColor: _curSelected == 0 ? Colors.blue : Colors.white,
            fontSize: 20
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: _curSelected == 0 ? Colors.blue : Colors.white,
        border: Border(
          top: BorderSide(width: 2.0, color: Colors.grey),
          bottom: BorderSide(width: 2.0, color: Colors.grey),
          left: BorderSide(width: 2.0, color: Colors.grey),
          right: BorderSide(width: 2.0, color: Colors.grey),
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0)
        )
      ),
    );
  }

  Widget renderCenterButton() {
    return Container(
      width: 100.0,
      height: 60.0,
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          print("center button");
          onButtonStateChanged(1);
        },
        child:Text(
          "中等",
          textAlign: TextAlign.center, 
          selectionColor: Colors.blue,
          style: TextStyle(
            color: _curSelected == 1 ? Colors.white : Colors.grey,
            backgroundColor: _curSelected == 1 ? Colors.blue : Colors.white,
            fontSize: 20
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: _curSelected == 1 ? Colors.blue : Colors.white,
        border: Border(
          top: BorderSide(width: 2.0, color: Colors.grey),
          bottom: BorderSide(width: 2.0, color: Colors.grey),
          left: BorderSide(width: 2.0, color: Colors.grey),
          right: BorderSide(width: 2.0, color: Colors.grey),
        )
      ),
    );
  }

  Widget renderRightButton() {
    return Container(
      width: 100.0,
      height: 60.0,
      alignment: Alignment.center,
      
      child: GestureDetector(
        onTap: () {
          print("right button");
          onButtonStateChanged(2);
        },
        child: Text(
          "高手", 
          textAlign: TextAlign.center, 
          selectionColor: Colors.blue,
          style: TextStyle(
            color: _curSelected == 2  ? Colors.white : Colors.grey,
            backgroundColor: _curSelected == 2  ? Colors.blue : Colors.white,
            fontSize: 20
          ),
        ) 
          
      ),
      decoration: BoxDecoration(
        color: _curSelected == 2 ? Colors.blue : Colors.white,
        border: Border(
          top: BorderSide(width: 2.0, color: Colors.grey),
          bottom: BorderSide(width: 2.0, color: Colors.grey),
          left: BorderSide(width: 2.0, color: Colors.grey),
          right: BorderSide(width: 2.0, color: Colors.grey),
        ),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0)
        )
      ),
    );
  }


  void onButtonStateChanged(int state) {
    setState(() {
      _curSelected = state;
      widget.callbackFn(state);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        renderLeftButton(),
        renderCenterButton(),
        renderRightButton()
      ]
    );
  }

}