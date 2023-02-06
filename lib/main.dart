//import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const BmiApp());
}

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});
  static const _title = "CMSD BMI App";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        // This is the theme of CMSD BMI Application.
        primarySwatch: Colors.orange,
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
  static const int minHeightFeet = 2;
  static const int maxHeightFeet = 8;
  static const int minHeightInches = 0;
  static const int maxHeightInches = 11;
  static const int minWeight = 30;
  static const int maxWeight = 500;
  static const int inchesPerFeet = 12;
  static const double multiplier = 703;
  static const int valueForBlankField = -1;
  static const int numberOfFixedDigits = 1;

  String _bmiAsString = "";
  String _errorMessage = "";
  // Users cannot type negative numbers
  int _feetPortionOfHeight = valueForBlankField;
  int _inchesPortionOfHeight = valueForBlankField;
  int _weight = valueForBlankField;

  void _calculateBmi() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values.

      // Validate our input: Apart from cases to validate from the requirements
      // document
      if ((_feetPortionOfHeight == valueForBlankField) &&
          (_inchesPortionOfHeight == valueForBlankField) &&
          (_weight == valueForBlankField)) {
        _errorMessage = "Please provide height and weight.";
        return;
      }

      if ((_feetPortionOfHeight == valueForBlankField) &&
          (_inchesPortionOfHeight == valueForBlankField)) {
        _errorMessage = "Please provide height.";
        return;
      }

      if ((_feetPortionOfHeight < minHeightFeet) ||
          (_feetPortionOfHeight > maxHeightFeet)) {
        _errorMessage =
            "Feet portion of height should be between $minHeightFeet and $maxHeightFeet.";
        return;
      }

      int inchesPortionOfHeight =
          _inchesPortionOfHeight; // temporary variable to preserve user input.
      if (inchesPortionOfHeight == valueForBlankField) {
        inchesPortionOfHeight = minHeightInches;
      }

      if ((inchesPortionOfHeight < minHeightInches) ||
          (inchesPortionOfHeight > maxHeightInches)) {
        _errorMessage =
            "Incehs portion of height should be between $minHeightInches and $maxHeightInches";
        return;
      }

      // Ensure that when the feet portion of height is 8 feet, then inches are 0 or not provided
      if ((_feetPortionOfHeight == maxHeightFeet) &&
          (inchesPortionOfHeight != minHeightInches)) {
        _errorMessage =
            "When height is $maxHeightFeet feet, inches portion should be blank or $minHeightInches.";
        return;
      }

      // Validate weight
      if (_weight == valueForBlankField) {
        _errorMessage = "Please provide weight.";
        return;
      }

      if ((_weight < minWeight) || (_weight > maxWeight)) {
        _errorMessage =
            "Please provide weight between $minWeight and $maxWeight pounds.";
        return;
      }

      _errorMessage = ""; // no error

      // now compute the BMI
      int totalHeightInInches =
          (_feetPortionOfHeight * inchesPerFeet) + inchesPortionOfHeight;
      double bmi =
          ((_weight.toDouble()) / (pow(totalHeightInInches, 2).toDouble())) *
              multiplier;

      _bmiAsString = bmi.toStringAsFixed(numberOfFixedDigits);
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
              maxLength: 1,
              enabled: true,
              decoration: const InputDecoration(
                labelText: "Feet portion of height",
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) => _feetPortionOfHeight =
                  (value.trim() == "") ? valueForBlankField : int.parse(value),
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            TextField(
              showCursor: true,
              maxLength: 2,
              enabled: true,
              decoration: const InputDecoration(
                labelText: "Inches portion of height",
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) => _inchesPortionOfHeight =
                  (value.trim() == "") ? valueForBlankField : int.parse(value),
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
            TextField(
              showCursor: true,
              maxLength: 3,
              enabled: true,
              decoration: const InputDecoration(
                labelText: "Weight in pounds",
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) => _weight =
                  (value.trim() == "") ? valueForBlankField : int.parse(value),
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
            ElevatedButton(
              onPressed: _calculateBmi,
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
