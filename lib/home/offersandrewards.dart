import 'package:flutter/material.dart';

class offersandrewards extends StatefulWidget {
  const offersandrewards({super.key});

  @override
  State<offersandrewards> createState() => _offersandrewardsState();
}

class _offersandrewardsState extends State<offersandrewards> {
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
                child: Image(image: NetworkImage("url")),
              ),
              const Text(
                "Rewards",
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
