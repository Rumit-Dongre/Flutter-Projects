
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final buttonele = Button.buttonele;

  String Input = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Calculator"),
        centerTitle: true,
      ),

      //@ ______________________________________________

      body: Column(
        children: [
          Container(
            color: Colors.black,
            width: double.infinity,
            
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "18+18",
                  style: TextStyle(
                    fontSize: 44,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "36",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),

          //@ KEY BORD
          Expanded(
              flex: 10,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(color: Color.fromARGB(255, 218, 27, 27)),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 1,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    // return Container(
                      
                    //   width: double.infinity,
                    //   // color: Colors.amber,
                    
                    //   child: Center(child: Text("x"),
                      
                    //   style: TextStyle(fontSize: 25),
                    //   ) ,),
                    // );
                    // if (index == 0) {
                    //   return ButtonCustom(
                    //       tap: () {
                    //         RestDisplay();
                    //       },
                    //       color: Colors.red,
                    //       text: buttonele[index],
                    //       textColor: Colors.blueAccent);
                    // } else if (index == 1) {
                    //   return ButtonCustom(
                    //       tap: () {
                    //         setState(() {
                    //           Input = Input + buttonele[index];
                    //         });
                    //       },
                    //       color: Colors.red,
                    //       text: buttonele[index],
                    //       textColor: Colors.blueAccent);
                    // } else if (index == 2) {
                    //   return ButtonCustom(
                    //       tap: () {
                    //         setState(() {
                    //           if (Input.length != 0) {
                    //             Input = Input.substring(0, (Input.length - 1));
                    //           }
                    //         });
                    //       },
                    //       color: Colors.red,
                    //       text: buttonele[index],
                    //       textColor: Colors.blueAccent);
                    // } else if (index == 19) {
                    //   return ButtonCustom(
                    //       tap: () {
                    //         evaluate();
                    //       },
                    //       color: Colors.red,
                    //       text: buttonele[index],
                    //       textColor: Colors.blueAccent);
                    // } else {
                    //   return ButtonCustom(
                    //       tap: () {
                    //         if (Output == '') {
                    //           setState(() {
                    //             Input += buttonele[index];
                    //           });
                    //         } else {
                    //           if (checkOperator(buttonele[index])) {
                    //             Input = Output + buttonele[index];
                    //             Output = '';
                    //           }
                    //         }
                    //       },
                    //       color: Colors.red,
                    //       text: buttonele[index],
                    //       textColor: Colors.blueAccent);
                    // }
                  },
                ),
              ))
        ],
      ),

      //@ ______________________________________________
    );
  }
}
