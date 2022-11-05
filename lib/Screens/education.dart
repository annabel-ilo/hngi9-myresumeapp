import 'package:flutter/material.dart';

import 'widgets/drawer.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text('Education'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child:  ListView(
            children:const [
               TextContainer(
                text1: "AltSchool Africa - School of Engineering",
                text2: "Cloud Engineering",
                text3: "APR 2021 - PRESENT ",
              ),
              TextContainer(
                text1: "The App Brewery",
                text2: "Complete Flutter Development Boot camp with Dart",
                text3: "APR 2021 - DEC2021",
              ),
               TextContainer(
                text1: "AltSchool Africa - School of Engineering",
                text2: "Cloud Engineering",
                text3: "APR 2021 - DEC2021",
              ),
               TextContainer(
                text1: "Flutter & Dart - The Complete Flutter App Development",
                text2: "Udemy",
                text3: "APR 2021 - PRESENT ",
              ),
               TextContainer(
                text1: "Zuri / Ingressive for Good",
                text2: "Mobile Development with Kotlin",
                text3: "MAR 2021 - JUL2021      ",
              ),
               TextContainer(
                text1: "Federal Polytechnic Oko-Anambra",
                text2: "HND. Insurance",
                text3: "2015 - 2017",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextContainer extends StatelessWidget {
  const TextContainer({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
  }) : super(key: key);

  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 4,
      width: size.width,
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text1,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            text2,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            text3,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 236, 225, 226),
          borderRadius: BorderRadius.circular(15)),
    );
  }
}
