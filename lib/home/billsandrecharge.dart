import 'package:flutter/material.dart';

class billsandrecharge extends StatefulWidget {
  const billsandrecharge({super.key});

  @override
  State<billsandrecharge> createState() => _billsandrechargeState();
}

class _billsandrechargeState extends State<billsandrecharge> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.height * 0.07,
                child: IconButton(
                  style: IconButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 211, 230, 246),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  iconSize: MediaQuery.of(context).size.height * 0.025,
                  onPressed: () {},
                  icon: const Icon(Icons.tv),
                ),
              ),
              const Text(
                "DT / Cable",
                style: TextStyle(fontSize: 12),
              ),
              const Text(
                "TV",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.height * 0.07,
                child: IconButton(
                  style: IconButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 211, 230, 246),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  iconSize: MediaQuery.of(context).size.height * 0.025,
                  onPressed: () {},
                  icon: const Icon(Icons.emoji_objects_outlined),
                ),
              ),
              const Text(
                "Electricity",
                style: TextStyle(fontSize: 12),
              ),
              const Text(
                "",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.height * 0.07,
                child: IconButton(
                  style: IconButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 211, 230, 246),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  iconSize: MediaQuery.of(context).size.height * 0.025,
                  onPressed: () {},
                  icon: const Icon(Icons.account_balance_outlined),
                ),
              ),
              const Text(
                "Postpaid",
                style: TextStyle(fontSize: 12),
              ),
              const Text(
                "Mobile",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.height * 0.07,
                child: IconButton(
                  style: IconButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 211, 230, 246),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  iconSize: MediaQuery.of(context).size.height * 0.025,
                  onPressed: () {},
                  icon: const Icon(Icons.router),
                ),
              ),
              const Text(
                "Brodband /",
                style: TextStyle(fontSize: 12),
              ),
              const Text(
                "Landline",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
      ],
    );
  }
}
