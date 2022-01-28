import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key, required this.endDate, required this.startDate})
      : super(key: key);
  final DateTime startDate;
  final DateTime endDate;
  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  final numberFormat = NumberFormat.decimalPattern();

  double differenceInYears = 0;
  double differenceInMonths = 0;
  String differenceInDays = '';
  String differenceInHours = '';
  String differenceInMinutes = '';
  String differenceInSeconds = '';
  String differenceInMilliSeconds = '';
  String differenceInMicroSeconds = '';
  String differenceInNanoSeconds = '';
  @override
  void initState() {
    differenceInYears =
        widget.endDate.difference(widget.startDate).inDays / 365;
    differenceInMonths =
        (widget.endDate.difference(widget.startDate).inDays / 365) * 12;
    differenceInDays =
        widget.endDate.difference(widget.startDate).inDays.toString();
    differenceInHours =
        widget.endDate.difference(widget.startDate).inHours.toString();
    differenceInMinutes =
        widget.endDate.difference(widget.startDate).inMinutes.toString();
    differenceInSeconds =
        widget.endDate.difference(widget.startDate).inSeconds.toString();
    differenceInMilliSeconds =
        widget.endDate.difference(widget.startDate).inMilliseconds.toString();
    differenceInMicroSeconds =
        widget.endDate.difference(widget.startDate).inMicroseconds.toString();
    differenceInNanoSeconds =
        (widget.endDate.difference(widget.startDate).inMicroseconds * 1000)
            .toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Result', style: GoogleFonts.ubuntuMono()),
        ),
        body: ListView(
          children: [
            MyResultWidgetListTile(
              title: 'Years',
              subtitle: differenceInYears.toStringAsFixed(1),
              fontsize: 25,
            ),
            MyResultWidgetListTile(
              title: 'Months',
              subtitle: differenceInMonths.toStringAsFixed(1),
              fontsize: 24,
            ),
            MyResultWidgetListTile(
              title: 'Weeks',
              subtitle: (int.parse(differenceInDays) / 7).toStringAsFixed(0),
              fontsize: 23,
            ),
            MyResultWidgetListTile(
              title: 'Days',
              subtitle: numberFormat.format(int.parse(differenceInDays)),
              fontsize: 22,
            ),
            MyResultWidgetListTile(
              title: 'Minutes',
              subtitle: numberFormat.format(int.parse(differenceInMinutes)),
              fontsize: 22,
            ),
            MyResultWidgetListTile(
              title: 'Seconds',
              subtitle: numberFormat.format(int.parse(differenceInSeconds)),
              fontsize: 20,
            ),
            MyResultWidgetListTile(
              title: 'Milli Seconds',
              subtitle:
                  numberFormat.format(int.parse(differenceInMilliSeconds)),
              fontsize: 19,
            ),
            MyResultWidgetListTile(
              title: 'Micro Seconds',
              subtitle:
                  numberFormat.format(int.parse(differenceInMicroSeconds)),
              fontsize: 18,
            ),
            MyResultWidgetListTile(
              title: 'Nano Seconds',
              subtitle: numberFormat.format(int.parse(differenceInNanoSeconds)),
              fontsize: 17,
            ),
          ],
        ),
      ),
    );
  }
}

class MyResultWidgetListTile extends StatelessWidget {
  const MyResultWidgetListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.fontsize,
  }) : super(key: key);
  final String title;
  final String subtitle;
  final double fontsize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: ListTile(
        tileColor: Colors.grey.shade50,
        title: Text(
          title,
          textAlign: TextAlign.start,
          style: GoogleFonts.ubuntuMono(
            fontSize: fontsize,
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
          ),
        ),
        subtitle: Text(
          subtitle,
          textAlign: TextAlign.start,
          style: GoogleFonts.aBeeZee(
              fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
