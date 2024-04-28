import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LottieScreenState();
  }
}

class LottieScreenState extends State<LottieScreen> {
  
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    //这里后面要更新成可以配置到某个动画的效果
    return Center(
      child: Lottie.asset("assets/lotties/chrysanthemum.json", 
                                animate: true,
                                repeat: true,),

    );
  }
  
}