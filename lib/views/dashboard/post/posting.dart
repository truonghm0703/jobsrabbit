import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Posting extends StatefulWidget {
  final double width;

  Posting({this.width});

  @override
  _PostingState createState() => _PostingState();
}

class _PostingState extends State<Posting> {
  int currentIndex = 0;
  List<Step> steps = [
    Step(
        title: Text(
            "Step 1"
        ),
        content: Container(
          child: Text(
              "Step 1"
          ),
        )
    ),
    Step(
        title: Text(
            "Step 2"
        ),
        content: Container(
          child: Text(
              "Step 2"
          ),
        )
    ),
    Step(
        title: Text(
            "Step 3"
        ),
        content: Container(
          child: Text(
              "Step 3"
          ),
        )
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Stepper(
      steps: steps,
      currentStep: currentIndex,
      type: StepperType.horizontal,
      onStepContinue: () {
        setState(() {
          if (currentIndex < steps.length - 1) {
            currentIndex++;
          }
        });
      },
      onStepCancel: () {
        setState(() {
          if (currentIndex > 0) {
            currentIndex--;
          }
        });
      },
    );
  }
}
