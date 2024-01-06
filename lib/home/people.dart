import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:gpay/chatui/chatui.dart';
import 'package:http/http.dart' as http;

class people extends StatefulWidget {
  const people({super.key});

  @override
  State<people> createState() => _peopleState();
}

class _peopleState extends State<people> {
  var url = Uri.parse("https://randomuser.me/api/?results=50");
  List peopledatalist = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    peopledatalist = [];
    isLoading = true;
    peopledata();
  }

  peopledata() async {
    var response = await http.get(url);
    setState(() {
      peopledatalist = jsonDecode(response.body)["results"];
      isLoading = false;
    });

    print(peopledatalist);
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Container(
            height: 220,
            child: GridView.builder(
                itemCount: 8,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemBuilder: (context, index) {
                  return GridTile(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      index <= 6
                          ? GestureDetector(
                              onTap: () async {
                                print("${peopledatalist[index]["name"]["first"]}" +
                                    "${peopledatalist[index]["name"]["last"]}");
                                await Get.to(chatui(
                                  name: "${peopledatalist[index]["name"]["first"]} " +
                                      "${peopledatalist[index]["name"]["last"]}",
                                  phone: "${peopledatalist[index]["phone"]}",
                                  pic:
                                      "${peopledatalist[index]["picture"]["thumbnail"]}",
                                ));
                              },
                              child: CircleAvatar(
                                minRadius: 30,
                                foregroundImage: NetworkImage(
                                    "${peopledatalist[index]["picture"]["thumbnail"]}"),
                              ),
                            )
                          : GestureDetector(
                              onTap: () {},
                              child: CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  minRadius: 30,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    minRadius: 29,
                                    child: IconButton(
                                        iconSize: 40,
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Colors.blue,
                                        )),
                                  )),
                            ),
                      index <= 6
                          ? Text("${peopledatalist[index]["name"]["first"]}")
                          : const Text("More")
                    ],
                  ));
                }),
          );
  }
}
