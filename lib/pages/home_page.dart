import 'package:datecal/widgets/calender_menu.dart';
import 'package:datecal/widgets/choice_menu.dart';
import 'package:datecal/pages/result_page.dart';
import 'package:datecal/widgets/my_input_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final firstDateController = TextEditingController();
  final secondDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Date Calculator',
            style: GoogleFonts.ubuntuMono(),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                child: Image(
                  image: AssetImage('assets/images/upper.png'),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: size.width * 0.8,
                height: size.height * 0.05,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.lightBlue.shade200,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    'Please select first and last date',
                    style: GoogleFonts.ubuntuMono(),
                  ),
                ),
              ),
              MyInputField(
                controller: firstDateController,
                labelText: 'Set First Date',
                onDateSelection: () async {
                  await showDialog(
                          context: context,
                          builder: (context) => CalendarMenu()) ??
                      "";
                },
              ),
              MyInputField(
                controller: firstDateController,
                labelText: 'Set Second Date',
                onDateSelection: () async {
                  await showDialog(
                          context: context,
                          builder: (context) => CalendarMenu()) ??
                      "";
                },
              ),
              SizedBox(height: size.height * 0.08),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResultPage()));
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Please Select Date First',
                        style: GoogleFonts.ubuntuMono(
                          color: Colors.white,
                        )),
                    backgroundColor: Colors.red,
                  ));
                },
                icon: const Icon(
                  Icons.calculate,
                  color: Colors.white,
                ),
                label: Text('\t\tCalculate\t\t',
                    style: GoogleFonts.ubuntuMono(
                      fontSize: 20,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
