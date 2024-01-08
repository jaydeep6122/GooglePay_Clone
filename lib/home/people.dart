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
  double count = 6;
  double countheight = 220;
  @override
  void initState() {
    super.initState();
    peopledatalist = [];
    isLoading = true;
    count = 6;
    countheight = 220;
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
            height: countheight,
            child: GridView.builder(
                itemCount: 24,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemBuilder: (context, index) {
                  return GridTile(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      index <= count
                          ? GestureDetector(
                              onTap: () async {
                                print("${peopledatalist[index]["name"]["first"]}" +
                                    "${peopledatalist[index]["name"]["last"]}");
                                await Get.to(chatui(
                                  name: "${peopledatalist[index]["name"]["first"]} " +
                                      "${peopledatalist[index]["name"]["last"]}",
                                  phone: "${peopledatalist[index]["phone"]}",
                                  pic:
                                      "${peopledatalist[index]["picture"]["large"]}",
                                ));
                              },
                              child: CircleAvatar(
                                minRadius: 30,
                                foregroundImage: NetworkImage(
                                    "${peopledatalist[index]["picture"]["large"]}"),
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
                                        onPressed: () {
                                          if (count == 6) {
                                            setState(() {
                                              count = 22;
                                              countheight = 650;
                                            });
                                          } else {
                                            setState(() {
                                              count = 6;
                                              countheight = 220;
                                            });
                                          }
                                        },
                                        icon: count == 6
                                            ? const Icon(
                                                Icons.keyboard_arrow_down,
                                                color: Colors.blue,
                                              )
                                            : const Icon(
                                                Icons.keyboard_arrow_up,
                                                color: Colors.blue,
                                              )),
                                  )),
                            ),
                      index <= count
                          ? Text("${peopledatalist[index]["name"]["first"]}")
                          : count == 6
                              ? const Text("More")
                              : const Text("Less")
                    ],
                  ));
                }),
          );
  }
}
