import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:gpay/profile/profile.dart';

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
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.width * 0.12,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: "Pay by name or phone number",
                        hintStyle: TextStyle(fontSize: 13),
                      ),
                    )),
                GestureDetector(
                  onTap: () {
                    Get.to(profile());
                  },
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://img.freepik.com/premium-photo/portrait-cheerful-bearded-arabic-guy-posing-urban-area_116547-70796.jpg"),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
