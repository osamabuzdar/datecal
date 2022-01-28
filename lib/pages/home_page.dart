import 'package:datecal/pages/result_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final firstDateController = TextEditingController();
  final secondDateController = TextEditingController();
  DateTime firstDate = DateTime.now();
  DateTime secondDate = DateTime.now();
  final _dateFormat = DateFormat('dd-MMM-yyyy');

  Future<void> _setFirstDate(BuildContext context) async {
    final picked = await showDatePicker(
        context: context,
        initialDate: firstDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2101));
    if (picked != null) {
      setState(() {
        firstDate = picked;
      });
    }
  }

  Future<void> _setSecondDate(BuildContext context) async {
    final picked = await showDatePicker(
        context: context,
        initialDate: secondDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(9101));
    if (picked != null) {
      setState(() {
        secondDate = picked;
      });
    }
  }

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
        body: SingleChildScrollView(
          child: Center(
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Start Date",
                        style: GoogleFonts.ubuntuMono(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Center(
                              child: Text(_dateFormat.format(firstDate)),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(10)),
                            height: size.height * 0.07,
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              _setFirstDate(context);
                            },
                            icon: const Icon(Icons.edit, color: Colors.grey)),
                      ],
                    ),
                    //next maintenance date
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "End Date",
                        style: GoogleFonts.ubuntuMono(
                            fontWeight: FontWeight.bold, color: Colors.orange),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Center(
                              child: Text(_dateFormat.format(secondDate)),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(10)),
                            height: size.height * 0.07,
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              _setSecondDate(context);
                            },
                            icon: const Icon(Icons.edit, color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.08),
                ElevatedButton.icon(
                  onPressed: () {
                    // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    //   content: Text('Please Select Date First',
                    //       style: GoogleFonts.ubuntuMono(
                    //         color: Colors.white,
                    //       )),
                    //   backgroundColor: Colors.red,
                    // ));

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultPage(
                          endDate: secondDate,
                          startDate: firstDate,
                        ),
                      ),
                    );
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
      ),
    );
  }
}
