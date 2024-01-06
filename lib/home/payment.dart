import 'package:flutter/material.dart';

class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: IconButton(
                      color: Color.fromARGB(255, 59, 81, 244),
                      style: IconButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 211, 230, 246),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      iconSize: MediaQuery.of(context).size.height * 0.025,
                      onPressed: () {},
                      icon: const Icon(Icons.qr_code_scanner),
                    ),
                  ),
                  const Text(
                    "Scan any",
                    style: TextStyle(fontSize: 12),
                  ),
                  const Text(
                    "QR code",
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
                      color: Color.fromARGB(255, 59, 81, 244),
                      style: IconButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 211, 230, 246),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      iconSize: MediaQuery.of(context).size.height * 0.025,
                      onPressed: () {},
                      icon: const Icon(Icons.contact_phone_outlined),
                    ),
                  ),
                  const Text(
                    "Pay",
                    style: TextStyle(fontSize: 12),
                  ),
                  const Text(
                    "contacts",
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
                      color: Color.fromARGB(255, 59, 81, 244),
                      style: IconButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 211, 230, 246),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      iconSize: MediaQuery.of(context).size.height * 0.025,
                      onPressed: () {},
                      icon: const Icon(Icons.smartphone_outlined),
                    ),
                  ),
                  const Text(
                    "Pay phone",
                    style: TextStyle(fontSize: 12),
                  ),
                  const Text(
                    "number",
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
                      color: Color.fromARGB(255, 59, 81, 244),
                      style: IconButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 211, 230, 246),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      iconSize: MediaQuery.of(context).size.height * 0.025,
                      onPressed: () {},
                      icon: const Icon(Icons.account_balance_outlined),
                    ),
                  ),
                  const Text(
                    "Bank",
                    style: TextStyle(fontSize: 12),
                  ),
                  const Text(
                    "Transfer",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: IconButton(
                      color: Color.fromARGB(255, 59, 81, 244),
                      style: IconButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 211, 230, 246),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      iconSize: MediaQuery.of(context).size.height * 0.025,
                      onPressed: () {},
                      icon: const Icon(Icons.alternate_email_outlined),
                    ),
                  ),
                  const Text(
                    "Pay UPI ID",
                    style: TextStyle(fontSize: 12),
                  ),
                  const Text(
                    "or number",
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
                      color: Color.fromARGB(255, 59, 81, 244),
                      style: IconButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 211, 230, 246),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      iconSize: MediaQuery.of(context).size.height * 0.025,
                      onPressed: () {},
                      icon: const Icon(Icons.person_outline),
                    ),
                  ),
                  const Text(
                    "Self",
                    style: TextStyle(fontSize: 12),
                  ),
                  const Text(
                    "transfer",
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
                      color: Color.fromARGB(255, 59, 81, 244),
                      style: IconButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 211, 230, 246),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      iconSize: MediaQuery.of(context).size.height * 0.025,
                      onPressed: () {},
                      icon: const Icon(Icons.receipt_long_outlined),
                    ),
                  ),
                  const Text(
                    "Pay",
                    style: TextStyle(fontSize: 12),
                  ),
                  const Text(
                    "bills",
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
                      color: Color.fromARGB(255, 59, 81, 244),
                      style: IconButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 211, 230, 246),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      iconSize: MediaQuery.of(context).size.height * 0.025,
                      onPressed: () {},
                      icon: const Icon(Icons.charging_station_outlined),
                    ),
                  ),
                  const Text(
                    "Mobile",
                    style: TextStyle(fontSize: 12),
                  ),
                  const Text(
                    "recharge",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
