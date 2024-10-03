import 'package:flutter/material.dart';

class FadetransitionDemo extends StatefulWidget {
  const FadetransitionDemo({super.key});

  @override
  State<FadetransitionDemo> createState() => _FadetransitionDemoState();
}

class _FadetransitionDemoState extends State<FadetransitionDemo>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;
  @override
  void initState(){
    super.initState();
    _controller= AnimationController(duration:Duration(seconds:2),vsync: this);
    _animation=CurvedAnimation(parent: _controller!, curve: Curves.easeIn);
    _controller!.forward();

  }
  @override
  void dispose(){
    _controller!.dispose();
    super.dispose();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fade transsition demo'),
      ),
      body:Center(
        child:FadeTransition(
          opacity: _animation!,
          child: Container(
            width: 200,
          ),
        )
      ) ,
    );
  }
}
