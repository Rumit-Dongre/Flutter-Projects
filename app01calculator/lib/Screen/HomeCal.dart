import 'package:app01calculator/Colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeCalPage extends StatefulWidget {
  const HomeCalPage({super.key});

  @override
  State<HomeCalPage> createState() => _HomeCalPageState();
}

class _HomeCalPageState extends State<HomeCalPage> {
  double firstNum = 0.0;
  double secondNum = 0.0;
  var input = "";
  var output = "";
  var operation = '';

  var hideInput = false;

  void OnButtonClick(value) {
    // print(value);
    if (value == "AC") {
      input = "";
      output = "";
    } else if (value == "<") {
      if (input.isNotEmpty) {
        input = input.substring(0, input.length - 1);
      }
    } else if (value == "=") {
      if (input.isNotEmpty) {
        print(input);
        var userInput = input;
        print(userInput);
        userInput = input.replaceAll("x", "*");
        // print(userInput);

        Parser p = Parser();
        Expression expression = p.parse(userInput);
        ContextModel cm = ContextModel();

        var finalValue = expression.evaluate(EvaluationType.REAL, cm);
        output = finalValue.toString();

        // output = output.substring(0, output.length - 2);

        if (output.endsWith(".0")) {
          output = output.substring(0, output.length - 2);
        }

        // input = output;

        // hideInput = true;
      }
    } else {
      input = input + value;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              color: const Color.fromARGB(255, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    hideInput ? " " : input,
                    style: TextStyle(fontSize: 48, color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    output,
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),

          // @ Button

          Row(
            children: [
              button(text: "AC", tColor: orangeColor),
              button(text: "<"),
              button(text: "", bgcolor: Colors.transparent),
              button(text: "/"),
            ],
          ),
          Row(
            children: [
              button(text: "7"),
              button(text: "8"),
              button(
                text: "9",
              ),
              button(text: "x"),
            ],
          ),
          Row(
            children: [
              button(text: "4"),
              button(text: "5"),
              button(text: "6"),
              button(text: "-"),
            ],
          ),
          Row(
            children: [
              button(text: "1"),
              button(text: "2"),
              button(text: "3"),
              button(text: "+"),
            ],
          ),
          Row(
            children: [
              button(text: "%"),
              button(text: "0"),
              button(text: "."),
              button(text: "="),
            ],
          ),
        ],
      ),
    );
  }

  Widget button({bgcolor = Colors.black, tColor = Colors.white, text}) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
        child: Text(
          text,
          style: TextStyle(fontSize: 24, color: tColor),
        ),
        style: ElevatedButton.styleFrom(
            primary: bgcolor,
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        onPressed: () {
          OnButtonClick(text);
        },
      ),
    ));
  }
}
