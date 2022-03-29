import 'package:cappuccino/data/datas.dart';
import 'package:cappuccino/menyu.dart';
import 'package:flutter/material.dart';

class Price extends StatefulWidget {
  int price;
  int narx;
  int star;

  Price(this.price, this.narx, this.star);

  @override
  _PriceState createState() => _PriceState();
}

class _PriceState extends State<Price> {
  int star = 17, like = 1;
  int button1 = 1, button2 = 0, button3 = 0;
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color.fromRGBO(33, 21, 33, 1),
        body: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width * 0.91,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            Data.imagePaths[widget.price],
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 25,
                  child: Opacity(
                    opacity: 0.6,
                    child: Chip(
                      backgroundColor: const Color.fromRGBO(54, 44, 53, 10),
                      label: InkWell(
                        child: const Icon(Icons.arrow_back_rounded,
                            color: Colors.white),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const Menyu();
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Cappuccino",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white70)),
                          SizedBox(height: 8),
                          Text(
                            "Karamel bilan sug'orilgan",
                            style:
                                TextStyle(fontSize: 16, color: Colors.white70),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(
                                  () {
                                    Data.star[widget.star] += 1;
                                  },
                                );
                              },
                              icon: const Icon(Icons.star,
                                  color: Colors.yellow, size: 20.0),
                            ),
                            Text(
                              "${Data.star[widget.star]}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 65, bottom: 15),
                        child: like.isOdd
                            ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    like += 1;
                                  });
                                },
                                icon: const Icon(Icons.favorite_border,
                                    color: Colors.white60, size: 32),
                              )
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    like += 1;
                                  });
                                },
                                icon: const Icon(Icons.favorite,
                                    color: Colors.red, size: 32),
                              ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Bitta espresso shotini issiq ko'pikli \nsutga quyib ustiga yumshoq shirinlangan \nkakao kukuni qo'shib, mazali karamel",
                        style: TextStyle(color: Colors.white60, fontSize: 17),
                      ),
                      Row(
                        children: const [
                          Text("siropi sepiladi... ",
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 17)),
                          Text("Read More",
                              style: TextStyle(color: Colors.white)),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 40),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        "Sut tanlash ",
                        style: TextStyle(color: Colors.white70, fontSize: 16),
                      ),
                      Icon(Icons.arrow_drop_down, color: Colors.white60),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      button1 == 1
                          ? ButtonBar(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary:
                                        const Color.fromRGBO(240, 228, 195, 20),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "  Yulaf suti  ",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            )
                          : OutlinedButton(
                              style: OutlinedButton.styleFrom(),
                              onPressed: () {
                                setState(() {
                                  button1 = 1;
                                  button2 = 0;
                                  button3 = 0;
                                });
                              },
                              child: const Text(
                                "  Yulaf suti  ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: button2 == 2
                            ? ButtonBar(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color.fromRGBO(
                                          240, 228, 195, 20),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      "  Soya suti  ",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ],
                              )
                            : OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    shadowColor: Colors.white,
                                    onSurface: Colors.white,
                                    primary: Colors.white),
                                onPressed: () {
                                  setState(() {
                                    button1 = 0;
                                    button2 = 2;
                                    button3 = 0;
                                  });
                                },
                                child: const Text(
                                  "  Soya suti  ",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                      ),
                      button3 == 3
                          ? ButtonBar(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary:
                                        const Color.fromRGBO(240, 228, 195, 20),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "  Bodom suti  ",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            )
                          : OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  shadowColor: Colors.white,
                                  onSurface: Colors.white,
                                  primary: Colors.white),
                              onPressed: () {
                                setState(() {
                                  button1 = 0;
                                  button2 = 0;
                                  button3 = 3;
                                });
                              },
                              child: const Text(
                                "  Bodom suti  ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 30),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Narxi",
                          style:
                              TextStyle(color: Colors.white54, fontSize: 16)),
                      Text("₤${Data.narx[widget.narx]}",
                          style: const TextStyle(
                              color: Colors.white70, fontSize: 24)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromRGBO(240, 228, 195, 20),
                            fixedSize: const Size.fromHeight(45),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "               Sotib olish             ",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
}
