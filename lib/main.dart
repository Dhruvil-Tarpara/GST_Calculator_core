import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    ),
  );
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  String number = "";
  Color mycolor = Colors.blue.shade100;
  Color gstcolor3 = Colors.grey;
  Color gstcolor5 = Colors.grey;
  Color gstcolor12 = Colors.grey;
  Color gstcolor18 = Colors.grey;
  Color gstcolor28 = Colors.grey;

  double gst3 = 0;
  double gst5 = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Decoration box = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: mycolor,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GST",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            letterSpacing: 4,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: size.height * 0.06,
              width: size.width,
              alignment: const Alignment(-0.9, 0),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  Text(
                    "ORIGINAL PRICE",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  Spacer(),
                  Text(
                    "${number}",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.016,
            ),
            Container(
              height: size.height * 0.04,
              width: size.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "GST",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            SizedBox(
              height: size.height * 0.012,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      gstcolor3 = Colors.orange;
                      gstcolor18 = Colors.grey;
                      gstcolor28 = Colors.grey;
                      gstcolor12 = Colors.grey;
                      gstcolor5 = Colors.grey;

                      gst3 = double.parse(number);
                      gst5 = double.parse(number);
                      gst3 = gst3 * (3 / 100);
                    });
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: gstcolor3,
                    ),
                    child: Container(
                      height: size.height * 0.04,
                      width: size.width * 0.18,
                      alignment: Alignment.center,
                      child: const Text("3%"),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      gstcolor5 = Colors.orange;
                      gstcolor3 = Colors.grey;
                      gstcolor18 = Colors.grey;
                      gstcolor28 = Colors.grey;
                      gstcolor12 = Colors.grey;

                      gst3 = double.parse(number);
                      gst3 = gst3 * (5 / 100);
                    });
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: gstcolor5,
                    ),
                    child: Container(
                      height: size.height * 0.04,
                      width: size.width * 0.18,
                      alignment: Alignment.center,
                      child: const Text("5%"),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      gstcolor12 = Colors.orange;
                      gstcolor3 = Colors.grey;
                      gstcolor5 = Colors.grey;
                      gstcolor18 = Colors.grey;
                      gstcolor28 = Colors.grey;
                      gst3 = gst3 * (12 / 100);
                    });
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: gstcolor12,
                    ),
                    child: Container(
                      height: size.height * 0.04,
                      width: size.width * 0.18,
                      alignment: Alignment.center,
                      child: const Text("12%"),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      gstcolor18 = Colors.orange;
                      gstcolor3 = Colors.grey;
                      gstcolor5 = Colors.grey;
                      gstcolor28 = Colors.grey;
                      gstcolor12 = Colors.grey;
                      gst3 = gst3 * (18 / 100);
                    });
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: gstcolor18,
                    ),
                    child: Container(
                      height: size.height * 0.04,
                      width: size.width * 0.18,
                      alignment: Alignment.center,
                      child: const Text("18%"),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      gstcolor28 = Colors.orange;
                      gstcolor3 = Colors.grey;
                      gstcolor5 = Colors.grey;
                      gstcolor12 = Colors.grey;
                      gstcolor18 = Colors.grey;
                    });
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: gstcolor28,
                    ),
                    child: Container(
                      height: size.height * 0.04,
                      width: size.width * 0.18,
                      alignment: Alignment.center,
                      child: const Text("28%"),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.014,
            ),
            Container(
              height: size.height * 0.06,
              width: size.width,
              alignment: const Alignment(-0.9, 0),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "FINAL PRICE",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  Spacer(),
                  Text(
                    "${gst3 + gst5}.RS",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.014,
            ),
            Container(
              alignment: Alignment.center,
              height: size.height * 0.08,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("CGST/SGST",style: TextStyle(fontSize: 18, color: Colors.black),),
                  Text("${gst3 / 2}",style: TextStyle(fontSize: 18, color: Colors.black),),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Row(
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          mycolor = Colors.blue.shade100;
                          number = number + "7";
                        });
                      },
                      child: Ink(
                        decoration: box,
                        child: Container(
                          height: size.height * 0.1,
                          width: size.width * 0.2,
                          alignment: Alignment.center,
                          child: Text(
                            "7",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          mycolor = Colors.blue.shade100;
                          number = number + "4";
                        });
                      },
                      child: Ink(
                        decoration: box,
                        child: Container(
                          height: size.height * 0.1,
                          width: size.width * 0.2,
                          alignment: Alignment.center,
                          child: Text(
                            "4",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          mycolor = Colors.blue.shade100;
                          number = number + "1";
                        });
                      },
                      child: Ink(
                        decoration: box,
                        child: Container(
                          height: size.height * 0.1,
                          width: size.width * 0.2,
                          alignment: Alignment.center,
                          child: Text(
                            "1",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          mycolor = Colors.blue.shade100;
                          number = number + "00";
                        });
                      },
                      child: Ink(
                        decoration: box,
                        child: Container(
                          height: size.height * 0.1,
                          width: size.width * 0.2,
                          alignment: Alignment.center,
                          child: Text(
                            "00",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: size.width * 0.04,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          mycolor = Colors.blue.shade100;
                          number = number + "8";
                        });
                      },
                      child: Ink(
                        decoration: box,
                        child: Container(
                          height: size.height * 0.1,
                          width: size.width * 0.2,
                          alignment: Alignment.center,
                          child: Text(
                            "8",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          mycolor = Colors.blue.shade100;
                          number = number + "5";
                        });
                      },
                      child: Ink(
                        decoration: box,
                        child: Container(
                          height: size.height * 0.1,
                          width: size.width * 0.2,
                          alignment: Alignment.center,
                          child: Text(
                            "5",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          mycolor = Colors.blue.shade100;
                          number = number + "2";
                        });
                      },
                      child: Ink(
                        decoration: box,
                        child: Container(
                          height: size.height * 0.1,
                          width: size.width * 0.2,
                          alignment: Alignment.center,
                          child: Text(
                            "2",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          mycolor = Colors.blue.shade100;
                          number = number + "0";
                        });
                      },
                      child: Ink(
                        decoration: box,
                        child: Container(
                          height: size.height * 0.1,
                          width: size.width * 0.2,
                          alignment: Alignment.center,
                          child: Text(
                            "0",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: size.width * 0.04,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          mycolor = Colors.blue.shade100;
                          number = number + "9";
                        });
                      },
                      child: Ink(
                        decoration: box,
                        child: Container(
                          height: size.height * 0.1,
                          width: size.width * 0.2,
                          alignment: Alignment.center,
                          child: Text(
                            "9",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          mycolor = Colors.blue.shade100;
                          number = number + "6";
                        });
                      },
                      child: Ink(
                        decoration: box,
                        child: Container(
                          height: size.height * 0.1,
                          width: size.width * 0.2,
                          alignment: Alignment.center,
                          child: Text(
                            "6",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          mycolor = Colors.blue.shade100;
                          number = number + "3";
                        });
                      },
                      child: Ink(
                        decoration: box,
                        child: Container(
                          height: size.height * 0.1,
                          width: size.width * 0.2,
                          alignment: Alignment.center,
                          child: Text(
                            "3",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          mycolor = Colors.blue.shade100;
                          // number.add();
                        });
                      },
                      child: Ink(
                        decoration: box,
                        child: Container(
                          height: size.height * 0.1,
                          width: size.width * 0.2,
                          alignment: Alignment.center,
                          child: Text(
                            ".",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: size.width * 0.04,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          mycolor = Colors.blue.shade100;
                          number = "";
                          gst3 = 0;
                          gst5 = 0;
                        });
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Container(
                          height: size.height * 0.2,
                          width: size.width * 0.2,
                          alignment: Alignment.center,
                          child: const Text(
                            "AC",
                            style: const TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          mycolor = Colors.white;
                          number = "";
                          gst3 = 0;
                          gst5 = 0;
                        });
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.orange,
                        ),
                        child: Container(
                          height: size.height * 0.2,
                          width: size.width * 0.2,
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.backspace_outlined,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
