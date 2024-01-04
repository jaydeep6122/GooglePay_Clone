import 'package:flutter/material.dart';

class business extends StatefulWidget {
  const business({super.key});

  @override
  State<business> createState() => _businessState();
}

class _businessState extends State<business> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: GridView.builder(
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemBuilder: (context, index) {
            return GridTile(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                index <= 2
                    ? CircleAvatar(
                        minRadius: 30,
                        child:
                            IconButton(onPressed: () {}, icon: Icon(Icons.abc)),
                      )
                    : CircleAvatar(
                        backgroundColor: Colors.grey,
                        minRadius: 30,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          minRadius: 29,
                          child: IconButton(
                              iconSize: 40,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.blue,
                              )),
                        )),
                index <= 2 ? Text("Groww") : const Text("More")
              ],
            ));
          }),
    );
  }
}
