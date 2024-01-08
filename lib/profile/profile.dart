import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: //Main Stack
          SingleChildScrollView(
        child: Stack(children: [
          //first Container Column
          Column(
            children: [
              // Background Container
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.sizeOf(context).height * 0.05),
                height: MediaQuery.sizeOf(context).height * 0.36,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://t4.ftcdn.net/jpg/05/42/73/17/360_F_542731787_npIDENXs9NMkl1mtyHKj8De2WBL2vnFW.jpg"))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(Icons.arrow_back_ios)),
                        const Spacer(),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.more_vert))
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.03,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.sizeOf(context).width * 0.04),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "JD Sarvaiya",
                                style: TextStyle(fontSize: 18),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                "jdsarvaiya007-@okjd",
                                style: TextStyle(fontSize: 13),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "8452465231",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: Colors.blue[100]),
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.verified,
                                          size: 12,
                                        ),
                                        Text(
                                          " UPI Number",
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  style: BorderStyle.solid,
                                  color: Colors.grey,
                                  width: 1)),
                          margin: EdgeInsets.only(
                              right: MediaQuery.sizeOf(context).width * 0.04),
                          child: const CircleAvatar(
                            radius: 36,
                            foregroundImage: NetworkImage(
                                "https://img.freepik.com/premium-photo/portrait-cheerful-bearded-arabic-guy-posing-urban-area_116547-70796.jpg"),
                          ),
                        )
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            left: MediaQuery.sizeOf(context).width * 0.06,
                            top: MediaQuery.sizeOf(context).width * 0.09),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 10,
                              backgroundImage: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9k0o4apd5aGi4D7dNRDmu0agBkvxYRkKiHw&usqp=CAU"),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Rewards earned",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w300),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
          // Second Upward Container
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                boxShadow: [
                  const BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8,
                    offset: Offset(0, 5),
                  )
                ]),
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * 0.04,
                vertical: MediaQuery.sizeOf(context).height * 0.33),
            height: MediaQuery.sizeOf(context).height * 0.18,
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.sizeOf(context).width * 0.01,
                            left: MediaQuery.sizeOf(context).width * 0.02),
                        child: const Text("Set up payment method (1/3)")),
                    const Spacer(),
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.sizeOf(context).width * 0.01,
                          right: MediaQuery.sizeOf(context).width * 0.02),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward,
                            color: Color.fromARGB(255, 26, 116, 218),
                            size: 20,
                          )),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            child: IconButton(
                              iconSize: 35,
                              onPressed: () {},
                              icon: const Icon(Icons.account_balance_outlined),
                              color: const Color.fromARGB(255, 59, 81, 244),
                            ),
                          ),
                          const Text(
                            "Bank Account",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "3 accounts",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            child: IconButton(
                              iconSize: 35,
                              onPressed: () {},
                              icon: const Icon(Icons.credit_card),
                              color: const Color.fromARGB(255, 59, 81, 244),
                            ),
                          ),
                          const Text(
                            "Rupay credit card",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "pay with UPI",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            child: IconButton(
                              iconSize: 35,
                              onPressed: () {},
                              icon: const Icon(Icons.double_arrow),
                              color: const Color.fromARGB(255, 59, 81, 244),
                            ),
                          ),
                          const Text(
                            "UPI Lite",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Pay PIN-free",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: MediaQuery.sizeOf(context).height * 0.52,
                left: MediaQuery.sizeOf(context).width * 0.02),
            child: const Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.qr_code_scanner_outlined,
                    color: Color.fromARGB(255, 59, 81, 244),
                    size: 22,
                  ),
                  title: Text(
                    "Your QR code",
                    style: TextStyle(fontSize: 13),
                  ),
                  subtitle: Text(
                    "Use to receive money fron any UPI app",
                    style: TextStyle(fontSize: 11),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.redeem,
                    color: Color.fromARGB(255, 59, 81, 244),
                    size: 22,
                  ),
                  title: Text(
                    "Invite friends, get rewards",
                    style: TextStyle(fontSize: 13),
                  ),
                  subtitle: Text(
                    "Share your code",
                    style: TextStyle(fontSize: 11),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.autorenew,
                    color: Color.fromARGB(255, 59, 81, 244),
                    size: 22,
                  ),
                  title: Text(
                    "Autopay",
                    style: TextStyle(fontSize: 13),
                  ),
                  subtitle: Text(
                    "No pending Request",
                    style: TextStyle(fontSize: 11),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings_outlined,
                    color: Color.fromARGB(255, 59, 81, 244),
                    size: 22,
                  ),
                  title: Text(
                    "Settings",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    color: Color.fromARGB(255, 59, 81, 244),
                    size: 22,
                  ),
                  title: Text(
                    "Manage Google Account",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.help_outline,
                    color: Color.fromARGB(255, 59, 81, 244),
                    size: 22,
                  ),
                  title: Text(
                    "Get help",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.language_outlined,
                    color: Color.fromARGB(255, 59, 81, 244),
                    size: 22,
                  ),
                  title: Text(
                    "Language",
                    style: TextStyle(fontSize: 13),
                  ),
                  subtitle: Text(
                    "English",
                    style: TextStyle(fontSize: 11),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
