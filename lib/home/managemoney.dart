// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class managemoney extends StatefulWidget {
  const managemoney({super.key});

  @override
  State<managemoney> createState() => _managemoneyState();
}

class _managemoneyState extends State<managemoney> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              // width: MediaQuery.of(context).size.width * 0.10,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5)),
              child: const Row(
                children: [
                  Icon(
                    Icons.credit_card_outlined,
                    color: Color.fromARGB(255, 59, 81, 244),
                  ),
                  Text(
                    "Get a Credit Card",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              // width: MediaQuery.of(context).size.width * 0.10,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5)),
              child: const Row(
                children: [
                  Icon(
                    Icons.credit_card_outlined,
                    color: Color.fromARGB(255, 59, 81, 244),
                  ),
                  Text(
                    "Loans",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5)),
              child: const Row(
                children: [
                  Icon(
                    Icons.credit_card_outlined,
                    color: Color.fromARGB(255, 59, 81, 244),
                  ),
                  Text(
                    "Gold",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
