import '../../resources/colors.dart';
import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  const MyCard({Key? key, required this.widget, this.height = 0}) : super(key: key);

  final double height;
  final Widget widget;

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    Color bgColor = prayerBgColorLight;

    return SizedBox(
      height: widget.height > 0 ? widget.height : null,
      child: Card(
        color: bgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[widget.widget],
        ),
      ),
    );
  }
}
