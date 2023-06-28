import 'package:demo/UI/ScreenTwo/ScreenTwo.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  //navigation
  void action(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> const ScreenTwo()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 150),
                const Icon(
                  Icons.image_outlined,
                  size: 80,
                ),
                const SizedBox(
                  height: 40,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Please select your Language",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "You can change the language\n               at any time.",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 55,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 15.0, left: 10),
                      child: Text(
                        "English",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 55,
                    width: 200,
                    decoration: const BoxDecoration(
                      color: Color(0xff2e3b62),
                    ),
                    child: Center(
                        child: GestureDetector(
                          //nav
                          onTap:action,
                          child: const Text(
                      "NEXT",
                      style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 232,
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Image.asset("assets/images/img_4.png"),
                    Image.asset("assets/images/img_5.png")
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
