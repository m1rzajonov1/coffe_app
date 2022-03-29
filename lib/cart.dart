import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'data/datas.dart';
import 'menyu.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  int home = 2, jami = 0, umumHisob = 0;
  List<Data> sum = List.generate(
      10,
      (__) => Data(
            son: 0,
          ));
  List narx = [45, 67, 39, 99, 87, 21];
  List jamiL = [0, 0, 0, 0, 0, 0];
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const Menyu();
                              },
                            ),
                          );
                          home += 1;
                        },
                        icon: const Icon(Icons.home_filled,
                            color: Colors.white30, size: 30)),
                home.isEven
                    ? IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.card_travel_rounded,
                            color: Colors.white, size: 30))
                    : IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.work_rounded,
                            color: Colors.white30, size: 30)),
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
              padding: const EdgeInsets.only(top: 60, bottom: 5),
              child: Center(
                child: Column(
                  children: const [
                    Text(
                      "Cart",
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    )
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: InkWell(
                child: Container(
                  height: 400,
                  width: 370,
                  color: Colors.transparent,
                  child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 130,
                      crossAxisCount: 1,
                    ),
                    itemBuilder: (_, __) => GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 6,
                          right: 6,
                          bottom: 13,
                        ),
                        child: Stack(
                          children: [
                            Container(
                              width: 370,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(54, 44, 53, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage(Data.imagePaths[__]),
                                            fit: BoxFit.cover),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            const Text("Cappuccino",
                                                style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16)),
                                            Text(
                                              Data.cofe[__],
                                              style: const TextStyle(
                                                  color: Colors.white70,
                                                  fontSize: 16),
                                            ),
                                            Text(
                                              "₤${Data.narx[__]}",
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 30,
                                            width: 115,
                                            decoration: const BoxDecoration(
                                              color: Color.fromRGBO(
                                                  70, 60, 72, 40),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary:
                                                        const Color.fromRGBO(
                                                            240, 228, 195, 1),
                                                    minimumSize:
                                                        const Size(5, 40),
                                                  ),
                                                  onPressed: () {
                                                    if (sum[__].son == 0) {
                                                      setState(() {});
                                                    } else {
                                                      sum[__].son -= 1;
                                                      jamiL[__] -= narx[__];
                                                      debugPrint("$narx");
                                                      debugPrint("$jamiL");
                                                      jami = 0;
                                                      for (var i = 0;
                                                          i < jamiL.length;
                                                          i++) {
                                                        jami += jamiL[i] as int;
                                                        umumHisob = jami;
                                                      }
                                                      setState(() {});
                                                    }
                                                  },
                                                  child: const Text(
                                                    "-",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 17),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Text(
                                                    "${sum[__].son}",
                                                    style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary:
                                                        const Color.fromRGBO(
                                                            240, 228, 195, 1),
                                                    minimumSize:
                                                        const Size(5, 40),
                                                  ),
                                                  onPressed: () {
                                                    jami = 0;
                                                    if (sum[__].son <= 8) {
                                                      sum[__].son += 1;
                                                      jamiL[__] = narx[__] *
                                                          sum[__].son;

                                                      debugPrint("$narx");
                                                      debugPrint("$jamiL");
                                                      for (var i = 0;
                                                          i < jamiL.length;
                                                          i++) {
                                                        jami += jamiL[i] as int;
                                                        umumHisob = jami;
                                                      }

                                                      setState(() {});
                                                    } else {
                                                      setState(() {});
                                                    }
                                                  },
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
                                        ],
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
            Padding(
              padding: const EdgeInsets.only(top: 3, left: 10, right: 10),
              child: Builder(
                builder: (context) {
                  return Column(
                    children: [
                      const Text(
                        "-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -",
                        style: TextStyle(color: Colors.white38, fontSize: 16),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          height: 40,
                          width: 350,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(58, 37, 43, 1),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40),
                              bottomLeft: Radius.circular(40),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Text(
                                "Kupon  kodini  qo'llang",
                                style: TextStyle(
                                    color: Color.fromRGBO(240, 228, 195, 1),
                                    fontSize: 16),
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  color: Color.fromRGBO(240, 228, 195, 1)),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 25, left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Yetkazib berish to'lovlari :",
                                  style: TextStyle(
                                      color: Colors.white60, fontSize: 16),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Jami :",
                                    style: TextStyle(
                                        color: Colors.white60, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const Text(
                                  "₤49",
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 18),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    "₤$jami",
                                    style: const TextStyle(
                                        color: Colors.white70, fontSize: 18),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16),
              child: Column(
                children: [
                  const Text(
                    "-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -",
                    style: TextStyle(color: Colors.white38, fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "Umumiy hisob",
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 16),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "₤${umumHisob + 49}",
                              style: const TextStyle(
                                  color: Colors.white70, fontSize: 18),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(240, 228, 195, 1),
                      ),
                      onPressed: () {
                        myAvesomeDialog(context);
                        jami = 0;
                        umumHisob = 0;
                        sum[0].son = 0;
                        sum[1].son = 0;
                        sum[2].son = 0;
                        sum[3].son = 0;
                        sum[4].son = 0;
                        sum[5].son = 0;
                        setState(() {});
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 80, right: 80, top: 5, bottom: 5),
                        child: Text(
                          "Xaridni amalga oshirish",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}

myAvesomeDialog(context) {
  return AwesomeDialog(
    dismissOnBackKeyPress: true,
    context: context,
    dialogType: DialogType.SUCCES,
    dialogBackgroundColor: const Color.fromRGBO(240, 228, 195, 10),
    desc: "Xaridingiz uchun raxmat !!!",
  )..show();
}
