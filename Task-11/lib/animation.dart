import 'package:flutter/material.dart';

class MyAnimation extends StatefulWidget {
  @override
  _MyAnimationState createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController myanicon;
  var animation;

  @override
  void initState() {
    super.initState();
    myanicon = AnimationController(vsync: this, duration: Duration(seconds: 1));

    print(myanicon);

    animation = CurvedAnimation(parent: myanicon, curve: Curves.decelerate)
      ..addListener(() {
        setState(() {
          print(animation.value);
        });
      });

    myanicon.forward(from: 0.001);
  }

  @override
  void dispose() {
    super.dispose();
    myanicon.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity * animation.value,
      height: 250 * animation.value,
      //color: Colors.redAccent,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://raw.githubusercontent.com/Deepaksaini7737/IMAGES/master/docker-1604134701743-7224.jpg")),
          borderRadius: BorderRadius.circular(50),
          border: Border.all(width: 5, color: Colors.black),
          color: Colors.black),
      child: GestureDetector(
        onTap: () {
          myanicon.forward(from: 0.01);
        },
      ),
    );
  }
}
