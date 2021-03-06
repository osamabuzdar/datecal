import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class CalendarMenu extends StatelessWidget {
  const CalendarMenu({Key? key, this.onSelect}) : super(key: key);
  final VoidCallback? onSelect;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var dateTime = DateTime.now();

    return AlertDialog(
      title: Text('Select Date', style: GoogleFonts.aBeeZee()),
      content: Wrap(
        children: <Widget>[
          DatePickerWidget(
            //   dateFormat: homeBusiness.format(),
            initialDate: DateTime.now(),
            firstDate: DateTime.parse("0000-01-01"),
            lastDate: DateTime.parse("9999-12-31"),
            onChange: (DateTime dateTime, List<int> index) {
              dateTime = dateTime;
            },
            locale: DateTimePickerLocale.pt_br,
            pickerTheme: DateTimePickerTheme(
              backgroundColor: Colors.blueGrey.shade50,
              // cancelTextStyle: TextTemplate.textFirst,
              // confirmTextStyle: TextTemplate.textFirst,
              itemTextStyle: GoogleFonts.aBeeZee(),
              dividerColor: Colors.white,
              pickerHeight: 170.0,
              itemHeight: 30.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  child: Text('Cancel', style: GoogleFonts.aBeeZee()),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  onPressed: () {
                    Navigator.pop(context, null);
                  }),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
              ElevatedButton(
                  child: Text('Confirm', style: GoogleFonts.aBeeZee()),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  onPressed: onSelect)
            ],
          ),
        ],
      ),
    );
  }
}
