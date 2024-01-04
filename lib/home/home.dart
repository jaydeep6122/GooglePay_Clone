// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:gpay/home/ads.dart';
import 'package:gpay/home/billsandrecharge.dart';
import 'package:gpay/home/business.dart';
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
                child: Card(
              child: Container(
                  child: const Text(
                    "UPI ID : jd6122@oksbi",
                    style: TextStyle(fontSize: 10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5)),
              shadowColor: Colors.grey,
              color: const Color.fromARGB(255, 237, 237, 237),
            )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            //All the people column
            Container(
              child: const Text("People", style: TextStyle(fontSize: 18)),
              padding: const EdgeInsets.only(left: 20),
            ),

            const people(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            // Business Payment
            Container(
              child: const Text("Businesses", style: TextStyle(fontSize: 18)),
              padding: const EdgeInsets.only(left: 20),
            ),
            const business(),
            Container(
              child: const Text("Bills & Recharge",
                  style: TextStyle(fontSize: 18)),
              padding: const EdgeInsets.only(left: 20),
            ),
            const billsandrecharge(),
            Center(
                child: Container(
                    padding: EdgeInsets.all(20),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "See all",
                          style: TextStyle(fontSize: 10),
                        ),
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20)),
                        )))),
            Container(
              child: const Text("Offers & rewards",
                  style: TextStyle(fontSize: 18)),
              padding: const EdgeInsets.only(left: 20),
            ),
            offersandrewards()
          ],
        ),
      ),
    );
  }
}
