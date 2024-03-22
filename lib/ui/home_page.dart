import 'package:flutter/material.dart';

import 'package:wakelock/wakelock.dart';

import 'widgets/card_widget.dart';
import 'widgets/prayer_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<List<bool>> statusList = List.generate(5, (index) => List.filled(4, false));

  @override
  void initState() {
    super.initState();
    Wakelock.enable();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    // Height (without status and toolbar)
    double height3 = height - padding.top - kToolbarHeight;
    double prayerCardHeight = height3 * 0.1;
    double mainCardHeight = height3 * 0.3;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("widget.title"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: mainCardHeight,
            ),
            PrayerWidget(
              label: "Fajr",
              status: statusList[0],
              height: prayerCardHeight,
            ),
            PrayerWidget(
              label: "Duhr",
              status: statusList[1],
              height: prayerCardHeight,
            ),
            PrayerWidget(
              label: "Asr",
              status: statusList[2],
              height: prayerCardHeight,
            ),
            PrayerWidget(
              label: "Maghrib",
              status: statusList[3],
              height: prayerCardHeight,
            ),
            PrayerWidget(
              label: "Isha",
              status: statusList[4],
              height: prayerCardHeight,
            ),
          ],
        ));
  }
}
