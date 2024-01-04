import 'package:flutter/material.dart';

class ads extends StatefulWidget {
  const ads({super.key});

  @override
  State<ads> createState() => _adsState();
}

class _adsState extends State<ads> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://mir-s3-cdn-cf.behance.net/project_modules/hd/1533e2105578543.606330d2c9a30.gif"))),
      height: MediaQuery.of(context).size.height * 0.2665,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.width * 0.12,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Welcome Back",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Colors.grey), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    )),
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://img.freepik.com/premium-photo/portrait-cheerful-bearded-arabic-guy-posing-urban-area_116547-70796.jpg"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
