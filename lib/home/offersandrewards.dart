import 'package:flutter/material.dart';

class offersandrewards extends StatefulWidget {
  const offersandrewards({super.key});

  @override
  State<offersandrewards> createState() => _offersandrewardsState();
}

class _offersandrewardsState extends State<offersandrewards> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 30),
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.height * 0.07,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9k0o4apd5aGi4D7dNRDmu0agBkvxYRkKiHw&usqp=CAU"),
                        )),
                    Container(
                        margin: EdgeInsets.only(right: 30),
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.height * 0.07,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://static.vecteezy.com/system/resources/previews/009/645/660/original/payment-icon-logo-illustration-credit-card-payment-symbol-template-for-graphic-and-web-design-collection-free-vector.jpg"),
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.height * 0.07,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://media.istockphoto.com/id/1156197975/vector/refer-a-friend-with-loudspeaker-in-speech-bubble.jpg?s=612x612&w=0&k=20&c=i8ShBKfRseySPs7g4e5-AEA00LjfqigbWvVQcwKffXo="),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 47, left: 8),
                      child: const Text(
                        "Rewards",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 47),
                      child: Text(
                        "Offers",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Text(
                        "Referrals",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
