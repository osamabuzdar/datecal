import 'package:datecal/widgets/calender_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChoiceMenu extends StatelessWidget {
  const ChoiceMenu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Select a format',
        style: GoogleFonts.ubuntuMono(),
      ),
      content: SizedBox(
        child: Wrap(
          direction: Axis.vertical,
          crossAxisAlignment: WrapCrossAlignment.start,
          children: <Widget>[
            ElevatedButton(
              child: Text('Only Year', style: GoogleFonts.aBeeZee()),
              onPressed: () async {
                Navigator.pop(
                    context,
                    await showDialog(
                        context: context,
                        builder: (context) => CalendarMenu()));
              },
            ),
            ElevatedButton(
              child: Text('Month & Year', style: GoogleFonts.aBeeZee()),
              onPressed: () async {
                Navigator.pop(
                    context,
                    await showDialog(
                        context: context,
                        builder: (context) => CalendarMenu()));
              },
            ),
            ElevatedButton(
              child: Text('Day Month & Year', style: GoogleFonts.aBeeZee()),
              onPressed: () async {
                Navigator.pop(
                    context,
                    await showDialog(
                        context: context,
                        builder: (context) => CalendarMenu()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
