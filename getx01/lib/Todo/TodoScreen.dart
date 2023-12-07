import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class TodoScreen extends StatelessWidget {
  TextEditingController txt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo"),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.amber),
        child: ElevatedButton(
            onPressed: () {
              Get.defaultDialog(
                  title: "Enter New Task",
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: TextFormField(
                            controller: txt,
                            decoration: InputDecoration(hintText: "Enter Task"),
                          ))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: () {}, child: Text("Cancel")),
                          ElevatedButton(
                              onPressed: () {
                                print(txt.text);
                                Get.back();
                              },
                              child: Text("Add")),
                        ],
                      ),
                    ],
                  ));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Add Todo",
                style: TextStyle(
                  backgroundColor: Colors.amber,
                ),
              ),
            )),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [Text("All Todos")],
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.blueAccent),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Text(
                                      "Eat Food",
                                      style: TextStyle(
                                          backgroundColor: Colors.amber),
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        Get.defaultDialog(
                                            title: "Edit Task",
                                            content: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                        child: TextFormField(
                                                      controller: txt,
                                                      decoration:
                                                          InputDecoration(
                                                              hintText:
                                                                  "Enter Task"),
                                                    ))
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    ElevatedButton(
                                                        onPressed: () {
                                                          Get.back();
                                                        },
                                                        child: Text("Cancel")),
                                                    ElevatedButton(
                                                        onPressed: () {
                                                          
                                                          Get.back();
                                                        },
                                                        child: Text("Save")),
                                                  ],
                                                ),
                                              ],
                                            ));
                                      },
                                      icon: Icon(Icons.edit)),
                                  IconButton(
                                      onPressed: () {

                                        Get.defaultDialog(
                  title: "Sure you Want To Delete",
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: () {

                                Get.back();
                              }, child: Text("Nope")),
                          ElevatedButton(
                              onPressed: () {
                                print(txt.text);
                                Get.back();
                              },
                              child: Text("Yes")),
                        ],
                      ),
                    ],
                  )
                  
                  );
                                      },
                                      icon: Icon(Icons.delete)),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          ))
        ],
      )),
    );
  }
}
