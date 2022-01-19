import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);
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
                SizedBox(),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    child: Table(
                        columnWidths: {
                          1: FixedColumnWidth(160),
                          2: FixedColumnWidth(80)
                        },
                        border: TableBorder.all(width: 2.0, color: Colors.blue),
                        children: [
                          TableRow(children: [
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 4, left: 8, bottom: 4),
                                child: Text('Years',
                                    textAlign: TextAlign.start,
                                    style:
                                        GoogleFonts.ubuntuMono(fontSize: 20))),
                            Padding(
                                padding: EdgeInsets.only(top: 4, bottom: 4),
                                child: Text('',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.ubuntuMono()))
                          ]),
                          TableRow(children: [
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 4, left: 8, bottom: 4),
                                child: Text('Months',
                                    textAlign: TextAlign.start,
                                    style:
                                        GoogleFonts.ubuntuMono(fontSize: 18))),
                            Padding(
                                padding: EdgeInsets.only(top: 4, bottom: 4),
                                child: Text(''.toString(),
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.ubuntuMono()))
                          ]),
                          TableRow(children: [
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 4, left: 8, bottom: 4),
                                child: Text('Days',
                                    textAlign: TextAlign.start,
                                    style:
                                        GoogleFonts.ubuntuMono(fontSize: 16))),
                            Padding(
                                padding: EdgeInsets.only(top: 4, bottom: 4),
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
