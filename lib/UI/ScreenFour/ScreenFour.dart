import 'package:flutter/material.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  int selectedValue = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            const Center(
              child: Text("Please select your profile",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 95,
              width: 390,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Stack(children: [
                ListTile(
                  leading: Transform.scale(
                    scale: 1.5,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 2.0, top: 5),
                      child: Radio(
                        value: 0,
                        groupValue: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value!;
                          });
                        },
                        activeColor: const Color(
                            0xff2e3b62), // Set the color of the selected radio button
                      ),
                    ),
                  ),
                  title: const Padding(
                    padding: EdgeInsets.only(left: 75.0, top: 10),
                    child: Text(
                      "Shipper",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.only(left: 75.0, top: 10),
                    child: Text(
                      "Lorem ipsum dolor sit amet,\nconsectetur adipiscing",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Positioned(
                    left: 70,
                    top: 10,
                    child: Image.asset(
                      "assets/images/img_1.png",
                      height: 70,
                      width: 70,
                    ))
              ]),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 95,
              width: 390,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Stack(children: [
                ListTile(
                  leading: Transform.scale(
                    scale: 1.5,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 2.0, top: 5),
                      child: Radio(
                        value: 1,
                        groupValue: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value!;
                          });
                        },
                        activeColor: const Color(
                            0xff2e3b62), // Set the color of the selected radio button
                      ),
                    ),
                  ),
                  title: const Padding(
                    padding: EdgeInsets.only(left: 75.0, top: 10),
                    child: Text(
                      "Transporter",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.only(left: 75.0, top: 10),
                    child: Text(
                      "Lorem ipsum dolor sit amet,\nconsectetur adipiscing",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Positioned(
                    left: 70,
                    top: 10,
                    child: Image.asset(
                      "assets/images/img_2.png",
                      height: 70,
                      width: 70,
                    ))
              ]),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 56,
              width: 380,
              decoration: const BoxDecoration(
                color: Color(0xff2e3b62),
              ),
              child: const Center(
                  child: Text(
                "CONTINUE",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
