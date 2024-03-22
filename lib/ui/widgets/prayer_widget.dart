import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'card_widget.dart';

class PrayerWidget extends StatefulWidget {
  const PrayerWidget({Key? key, required this.label, required this.status, this.height = 0}) : super(key: key);

  final String label;
  final List<bool> status;
  final double height;

  @override
  State<PrayerWidget> createState() => PrayerState();
}

class PrayerState extends State<PrayerWidget> {
  var onColor = Colors.green;
  var offColor = Colors.grey[400];

  @override
  Widget build(BuildContext context) {
    var labelStyle = const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 28,
      fontFamily: 'Tajawal',
    );

    var iconSize = 30.0;
    List<IconButton> icons = [
      IconButton(
        iconSize: iconSize,
        icon: const Icon(Icons.mosque),
        color: widget.status[0] ? onColor : offColor,
        onPressed: () {
          switchStatus(0);
        },
        tooltip: 'Mosque',
      ),
      IconButton(
        iconSize: iconSize,
        icon: const Icon(Icons.done),
        color: widget.status[1] ? onColor : offColor,
        onPressed: () {
          switchStatus(1);
        },
        tooltip: 'Notifications',
      ),
      IconButton(
        iconSize: iconSize,
        icon: const Icon(Icons.timer),
        color: widget.status[2] ? onColor : offColor,
        onPressed: () {
          switchStatus(2);
        },
        tooltip: 'Notifications',
      ),
      IconButton(
        iconSize: iconSize,
        icon: const Icon(Icons.close),
        color: widget.status[3] ? onColor : offColor,
        onPressed: () {
          switchStatus(3);
        },
        tooltip: 'Notifications',
      ),
    ];

    return MyCard(
      height: widget.height,
      widget: ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            widget.label,
            style: labelStyle,
            textAlign: TextAlign.center,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: icons,
        ),
      ),
    );
  }

  void switchStatus(int index) {
    setState(() {
      widget.status[index] = !widget.status[index];
    });
  }
}
