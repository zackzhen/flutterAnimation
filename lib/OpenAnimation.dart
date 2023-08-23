import 'package:flutter/material.dart';
import 'package:untitled3/IndexPage.dart';

class OpenAnimation extends StatefulWidget {
  const OpenAnimation({super.key});

  @override
  State<OpenAnimation> createState() => _OpenAnimationState();
}

class _OpenAnimationState extends State<OpenAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _controller ;
  // late Animation<Double> _animation;

  // Animation
  late Animation<double> _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FadeTransition(
        opacity: _animation,
        child: Image.asset('images/startbg.jpg',fit: BoxFit.fill,),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = AnimationController(duration: Duration(seconds: 3),vsync: this);
    // _animation = Tween(begin: 0,end: 1).animate(_controller);
    _animation.addStatusListener((status) {
      if(status == AnimationStatus.completed){
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){
          return IndexPage();
        }), (route) => false);
      }
    });
    _controller.forward();
  }
}
