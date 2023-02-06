//import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const LnyApp());
}

class LnyApp extends StatelessWidget {
  const LnyApp({super.key});
  static const _title = "Lunar New Year App";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BmiHomePage(title: _title),
    );
  }
}

class BmiHomePage extends StatefulWidget {
  const BmiHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<BmiHomePage> createState() => _BmiHomePageState();
}

class _BmiHomePageState extends State<BmiHomePage> {
  static const int minYear = 0;
  static const int maxYear = 9999;
  static const int valueForBlankField = -1;
  static const int numberOfFixedDigits = 1;
  static const int currentYear = 2023;

  String _zodAsString = "";
  String _errorMessage = "";
  // Users cannot type negative numbers
  int _year = valueForBlankField;
  int _inchesPortionOfHeight = valueForBlankField;
  int _weight = valueForBlankField;

  void _calculateLNY() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values.

      // Validate our input: Apart from cases to validate from the requirements
      // document
      if (_year == valueForBlankField) {
        _errorMessage = "Please provide Birth Year.";
        return;
      }

      if ((_year < minYear) || (_year > maxYear)) {
        _errorMessage = "Birth Year should be between $minYear and $maxYear.";
        return;
      }

      _errorMessage = ""; // no error

      // now compute the Lunar Sign
      String _zodAsString = "Undir";
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Per Requirement we should have three input boxes (two for height,
          // one for weight) and a calculate button
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              showCursor: true,
              maxLength: 4,
              enabled: true,
              decoration: const InputDecoration(
                labelText: "Please enter a year",
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) => _feetPortionOfHeight =
                  (value.trim() == "") ? valueForBlankField : int.parse(value),
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            ElevatedButton(
              onPressed: _calculateLNY,
              child: const Text("Calculate"),
            ),
            Visibility(
                visible: (_errorMessage != ""),
                child: Text(_errorMessage,
                    style: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ))),
            Visibility(
              visible: ((_errorMessage == "") && (_bmiAsString != "")),
              child: Text(
                'BMI is: $_bmiAsString',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
