import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:getx01/APi/Model/PostModel.dart';
import 'package:getx01/APi/Model/ProductModel.dart';
import 'package:http/http.dart' as http;

class fetchApiScreen extends StatefulWidget {
  const fetchApiScreen({super.key});

  @override
  State<fetchApiScreen> createState() => _fetchApiScreenState();
}

class _fetchApiScreenState extends State<fetchApiScreen> {
  List<PostModel> postList = [];
  List<ProductModel> postList1 = [];

  Future<List<PostModel>> getPostApi() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        postList.add(PostModel.fromJson(i));
      }
    }
    print(postList);
    return postList;
  }


  Future<List<ProductModel>> getProductsApi() async {
    final response =
        await http.get(Uri.parse("https://dummyjson.com/products"));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        postList1.add(ProductModel.fromJson(i));
      }
    }
    print(postList1);
    return postList1;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // getPostApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Final"),
        ),
        // body: Column(
        //   children: [
        //     Expanded(
        //       child: FutureBuilder(
        //         future: getPostApi(),
        //         builder: (context, snapshot) {
        //           if (!snapshot.hasData) {
        //            return CircularProgressIndicator();
        //           } else {
        //             return ListView.builder(
        //               itemCount: postList.length,
        //               itemBuilder: (context, index) {
        //                 return ListTile(
        //                   title: Text(postList[index].body.toString()),
        //                 );
        //               },
        //             );
        //           }
        //         },
        //       ),
        //     )
        //   ],
        // )
        // 



          // ___
           body: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: getProductsApi(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                   return CircularProgressIndicator();
                  } else {
                    return ListView.builder(
                      itemCount: postList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(postList1[0].products![index].brand.toString()),
                        );
                      },
                    );
                  }
                },
              ),
            )
          ],
        )


        );
  }
}
