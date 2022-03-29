// ignore_for_file: non_constant_identifier_names

import 'dart:ui';

import 'package:cappuccino/cart.dart';
import 'package:cappuccino/price.dart';
import 'package:flutter/material.dart';
import 'data/datas.dart';

class Menyu extends StatefulWidget {
  const Menyu({Key? key}) : super(key: key);

  @override
  _MenyuState createState() => _MenyuState();
}

class _MenyuState extends State<Menyu> {
  int home = 1, cart = 1, i1 = 1, i2 = 0, i3 = 0, i4 = 0, i5 = 0, i6 = 0;
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color.fromRGBO(33, 21, 33, 1),
        bottomNavigationBar: SizedBox(
          height: 80.0,
          child: BottomAppBar(
            color: const Color.fromRGBO(23, 16, 23, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                home.isOdd
                    ? IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.home_filled,
                            color: Colors.white, size: 30))
                    : IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.home_filled,
                            color: Colors.white30, size: 30)),
                home.isOdd
                    ? IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const Cart();
                              },
                            ),
                          );
                          cart += 1;
                        },
                        icon: const Icon(Icons.card_travel_rounded,
                            color: Colors.white30, size: 30))
                    : IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.work_rounded,
                            color: Colors.white, size: 30)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite,
                        color: Colors.white30, size: 30)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_alert,
                        color: Colors.white30, size: 30)),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 18, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "deja",
                        style: TextStyle(
                            color: Color.fromRGBO(127, 117, 118, 1),
                            fontSize: 40,
                            fontStyle: FontStyle.italic),
                      ),
                      Text(
                        " Brew",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 27),
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 34,
                      child: CircleAvatar(
                        backgroundColor: Color.fromRGBO(33, 21, 33, 12),
                        radius: 33,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/image/ozim.jpg"),
                          radius: 30,
                          foregroundColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 15),
              child: Container(
                height: 40,
                width: 360,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(23, 16, 23, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, left: 17),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(Icons.search, color: Colors.white38),
                      Padding(
                        padding: EdgeInsets.only(left: 20,bottom: 3),
                        child: Center(
                          child: Text("Sevimli qahvangizni qidiring ...",style: TextStyle(
                                color: Colors.white38,
                                fontSize: 15,
                                fontStyle: FontStyle.normal,),),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      height: 551,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(56, 35, 42, 1),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(80),
                        ),
                      ),
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              i5 == 0
                                  ? TextButton(
                                      onPressed: () {
                                        setState(() {
                                          i1 = 0;
                                          i2 = 0;
                                          i3 = 0;
                                          i4 = 0;
                                          i5 = 5;
                                        });
                                      },
                                      child: const Text("Americano",
                                          style: TextStyle(
                                              color: Colors.white30,
                                              fontSize: 16)),
                                    )
                                  : TextButton(
                                      onPressed: () {},
                                      child: const Text("Americano",
                                          style: TextStyle(
                                              color: Colors.white60,
                                              fontSize: 16)),
                                    ),
                              i4 == 0
                                  ? TextButton(
                                      onPressed: () {
                                        setState(() {
                                          i1 = 0;
                                          i2 = 0;
                                          i3 = 0;
                                          i4 = 4;
                                          i5 = 0;
                                        });
                                      },
                                      child: const Text("Espresso",
                                          style: TextStyle(
                                              color: Colors.white30,
                                              fontSize: 16)),
                                    )
                                  : TextButton(
                                      onPressed: () {},
                                      child: const Text("Espresso",
                                          style: TextStyle(
                                              color: Colors.white60,
                                              fontSize: 16)),
                                    ),
                              i3 == 0
                                  ? TextButton(
                                      onPressed: () {
                                        setState(() {
                                          i1 = 0;
                                          i2 = 0;
                                          i3 = 3;
                                          i4 = 0;
                                          i5 = 0;
                                        });
                                      },
                                      child: const Text("Americano",
                                          style: TextStyle(
                                              color: Colors.white30,
                                              fontSize: 16)),
                                    )
                                  : TextButton(
                                      onPressed: () {},
                                      child: const Text("Americano",
                                          style: TextStyle(
                                              color: Colors.white60,
                                              fontSize: 16)),
                                    ),
                              i2 == 0
                                  ? TextButton(
                                      onPressed: () {
                                        setState(() {
                                          i1 = 0;
                                          i2 = 2;
                                          i3 = 0;
                                          i4 = 0;
                                          i5 = 0;
                                        });
                                      },
                                      child: const Text("Latte",
                                          style: TextStyle(
                                              color: Colors.white30,
                                              fontSize: 16)),
                                    )
                                  : TextButton(
                                      onPressed: () {},
                                      child: const Text("Latte",
                                          style: TextStyle(
                                              color: Colors.white60,
                                              fontSize: 16)),
                                    ),
                              i1 == 1
                                  ? TextButton(
                                      onPressed: () {},
                                      child: const Text("Cappuccino",
                                          style: TextStyle(
                                              color: Colors.white60,
                                              fontSize: 16)))
                                  : TextButton(
                                      onPressed: () {
                                        setState(() {
                                          i1 += 1;
                                          i2 = 0;
                                          i3 = 0;
                                          i4 = 0;
                                          i5 = 0;
                                        });
                                      },
                                      child: const Text("Cappuccino",
                                          style: TextStyle(
                                              color: Colors.white38,
                                              fontSize: 16)),
                                    ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 550,
                        width: 330,
                        color: Colors.transparent,
                        child: GridView.builder(
                          scrollDirection: Axis.vertical,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 250,
                            crossAxisCount: 2,
                          ),
                          itemBuilder: (_, __) => GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Price(__,__,__);
                                  },
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 8,
                                right: 8,
                                bottom: 13,
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    width: 200,
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(54, 44, 53, 20),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                                  Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Container(
                                      height: 130,
                                      width: 130,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                Data.imagePaths[__]),
                                            fit: BoxFit.cover),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 2,
                                    left: 12,
                                    child: Opacity(
                                      opacity: 0.9,
                                      child: Chip(
                                          backgroundColor: const Color.fromRGBO(
                                              54, 44, 53, 20),
                                          avatar: Row(
                                            children: const [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 20,
                                              )
                                            ],
                                          ),
                                          label: Text("${Data.star[__]}",
                                              style: const TextStyle(
                                                  color: Colors.white60))),
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 53,
                                      left: 12,
                                      child: Text(
                                        "${Data.cofe[__]}",
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      )),
                                  Positioned(
                                    bottom: 10,
                                    left: 15,
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(70, 60, 72, 40),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(8),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "     ₤${Data.narx[__]}",
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.white70,
                                              minimumSize: const Size(10, 40),
                                            ),
                                            onPressed: () {},
                                            child: const Text(
                                              "+",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 17),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          itemCount: Data.imagePaths.length,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      );
}
