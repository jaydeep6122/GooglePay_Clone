import 'package:flutter/material.dart';

class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
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
                  style: IconButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 211, 230, 246),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  iconSize: MediaQuery.of(context).size.height * 0.025,
                  onPressed: () {},
                  icon: const Icon(Icons.phone_enabled_rounded),
                ),
              ),
              const Text(
                "Send",
                style: TextStyle(fontSize: 12),
              ),
              const Text(
                "money",
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
                  icon: const Icon(Icons.receipt_long_outlined),
                ),
              ),
              const Text(
                "Recharge",
                style: TextStyle(fontSize: 12),
              ),
              const Text(
                "and bills",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
      ],
    );
  }
}
