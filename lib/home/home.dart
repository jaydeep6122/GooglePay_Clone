// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:gpay/home/ads.dart';
import 'package:gpay/home/billsandrecharge.dart';
import 'package:gpay/home/business.dart';
import 'package:gpay/home/managemoney.dart';
import 'package:gpay/home/offersandrewards.dart';
import 'package:gpay/home/payment.dart';
import 'package:gpay/home/people.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //advertisement column
            const ads(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            //Payment column
            const payment(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),

            // UPI id
            Center(
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromARGB(255, 244, 250, 253),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    child: const Text(
                      "UPI ID : jd6122@oksbi",
                      style: TextStyle(fontSize: 10),
                    ))),

            //All the people column
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: const Text("People", style: TextStyle(fontSize: 18)),
            ),

            const people(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            // Business Payment
            Container(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: const Text("Businesses", style: TextStyle(fontSize: 18)),
            ),

            const business(),
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: const Text("Bills & Recharge",
                  style: TextStyle(fontSize: 18)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const billsandrecharge(),
            Center(
                child: Container(
                    padding: const EdgeInsets.all(20),
                    child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        child: const Text(
                          "See all",
                          style: TextStyle(fontSize: 10),
                        )))),

            Container(
              padding: const EdgeInsets.only(left: 20),
              child: const Text("Offers & rewards",
                  style: TextStyle(fontSize: 18)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const offersandrewards(),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: const Text("Manage your Money",
                  style: TextStyle(fontSize: 18)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const managemoney(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
