import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyInputField extends StatelessWidget {
  const MyInputField(
      {Key? key, this.controller, this.labelText, this.onDateSelection})
      : super(key: key);
  final TextEditingController? controller;
  final String? labelText;
  final VoidCallback? onDateSelection;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: TextField(
            enabled: false,
            readOnly: true,
            autofocus: false,
            maxLines: 1,
            style: const TextStyle(color: Colors.black, fontSize: 18.0),
            controller: controller,
            decoration: InputDecoration(
                labelStyle: GoogleFonts.ubuntuMono(),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide:
                        const BorderSide(color: Colors.black, width: 0.0)),
                labelText: labelText),
            textAlign: TextAlign.start,
          ),
        ),
        ButtonBar(
          children: [
            ElevatedButton.icon(
              onPressed: () {
                controller!.clear();
              },
              icon: const Icon(
                Icons.clear_all,
                color: Colors.white,
              ),
              label: Text('Clear', style: GoogleFonts.ubuntuMono()),
            ),
            ElevatedButton.icon(
              onPressed: onDateSelection,
              icon: const Icon(
                Icons.edit,
                color: Colors.white,
              ),
              label: Text('Select', style: GoogleFonts.ubuntuMono()),
            )
          ],
        )
      ],
    );
  }
}



// () async {
//              
//               },