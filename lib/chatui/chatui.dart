import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:vengamo_chat_ui/vengamo_chat_ui.dart';

class chatui extends StatefulWidget {
  final name;
  final phone;
  final pic;
  const chatui(
      {super.key, required this.name, required this.phone, required this.pic});
  @override
  State<chatui> createState() => _chatuiState();
}

class _chatuiState extends State<chatui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        height: MediaQuery.of(context).size.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                "Pay",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 59, 81, 244),
                shape: RoundedRectangleBorder(
                    //side: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Request",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                backgroundColor: const Color.fromARGB(255, 59, 81, 244),
                shape: RoundedRectangleBorder(
                    //side: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Container(
                decoration: BoxDecoration(
                    boxShadow: [],
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[50]),
                width: MediaQuery.of(context).size.width * 0.50,
                height: MediaQuery.of(context).size.width * 0.10,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.send_outlined),
                    ),
                    hintText: 'Message..',
                    hintStyle: const TextStyle(fontSize: 10),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 10),
                  ),
                ))
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(176, 233, 236, 241),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color.fromARGB(255, 72, 72, 72),
            )),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("${widget.pic}"),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      "${widget.name}",
                      style: const TextStyle(fontSize: 13),
                    ),
                    subtitle: Text(
                      "${widget.phone}",
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
            color: const Color.fromARGB(255, 72, 72, 72),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            color: const Color.fromARGB(255, 72, 72, 72),
          )
        ],
      ),
      body: Container(
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            VengamoChatUI(
              senderBgColor: Color.fromARGB(255, 240, 240, 240),
              receiverBgColor: Colors.red,
              isSender: true,
              isNextMessageFromSameSender: false,
              time: '10:00',
              timeLabelColor: Colors.black,
              text: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Payment to ..."),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "₹2,000",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.verified,
                        color: Colors.green,
                        size: 12,
                      ),
                      Text(
                        "Paid -Dec 30",
                        style: TextStyle(fontSize: 8),
                      )
                    ],
                  ),
                ],
              ),
              pointer: true,
              ack: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black, // You can customize the color here
                size: 13, // You can customize the size here
              ),
            ),
            VengamoChatUI(
              senderBgColor: Color.fromARGB(255, 240, 240, 240),
              receiverBgColor: Color.fromARGB(255, 240, 240, 240),
              isSender: false,
              isNextMessageFromSameSender: false,
              time: '10:00',
              timeLabelColor: Colors.black,
              text: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Payment to ..."),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "₹2,000",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.verified,
                        color: Colors.green,
                        size: 12,
                      ),
                      Text(
                        "Paid -Dec 30",
                        style: TextStyle(fontSize: 8),
                      )
                    ],
                  ),
                ],
              ),
              pointer: true,
              ack: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black, // You can customize the color here
                size: 13, // You can customize the size here
              ),
            ),
          ],
        ),
      ),
    );
  }
}
