import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key, required this.endDate, required this.startDate})
      : super(key: key);
  final DateTime startDate;
  final DateTime endDate;
  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  var differenceInDays;
  var differenceInYears;
  var differenceInMonths;
  @override
  void initState() {
    differenceInDays = widget.endDate.difference(widget.startDate).inDays;
    differenceInYears =
        widget.endDate.difference(widget.startDate).inDays / 365;
    print('difference in days $differenceInDays');
    print('difference in year ${differenceInYears.floor().toString()}');
    print('difference in months $differenceInMonths');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Result', style: GoogleFonts.ubuntuMono()),
          ),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    child: Table(
                        // ignore: prefer_const_literals_to_create_immutables
                        columnWidths: {
                          1: const FixedColumnWidth(160),
                          2: const FixedColumnWidth(80)
                        },
                        border: TableBorder.all(width: 2.0, color: Colors.blue),
                        children: [
                          TableRow(children: [
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 4, left: 8, bottom: 4),
                                child: Text('Years',
                                    textAlign: TextAlign.start,
                                    style:
                                        GoogleFonts.ubuntuMono(fontSize: 20))),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 4, bottom: 4),
                                child: Text('',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.ubuntuMono()))
                          ]),
                          TableRow(children: [
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 4, left: 8, bottom: 4),
                                child: Text('Months',
                                    textAlign: TextAlign.start,
                                    style:
                                        GoogleFonts.ubuntuMono(fontSize: 18))),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 4, bottom: 4),
                                child: Text(''.toString(),
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.ubuntuMono()))
                          ]),
                          TableRow(children: [
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 4, left: 8, bottom: 4),
                                child: Text('Days',
                                    textAlign: TextAlign.start,
                                    style:
                                        GoogleFonts.ubuntuMono(fontSize: 16))),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 4, bottom: 4),
                                child: Text('',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.ubuntuMono()))
                          ]),
                        ])),
                Text('',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.ubuntuMono()),
              ])),
    );
  }
}
