import 'package:flutter/material.dart';

import 'widgets/drawer.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experience'),
      ),
      drawer: AppDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 22, right: 22),
          child: ListView(
            children: [
              Container(
                height: size.height / 3,
                width: size.width,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    ExperWidget(
                      text1: 'Flutter Developer',
                      text2: 'APR 2022 – Precent',
                      widget: Column(
                        children: [
                          description(
                              text3:
                                  "  Working in a team of software engineers towards the production of a fintech and social application."),
                          description(
                              text3:
                                  "	First hand experience with senior developers in every field of a production level application."),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.purple,
                    )),
              ),
              Container(
                height: size.height / 3,
                width: size.width,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    ExperWidget(
                      text1: 'Mobile Developer',
                      text2: 'JUL 2021 – DEC 2021',
                      widget: Column(
                        children: [
                          description(
                              text3:
                                  " 	Worked with a flutter team to develop optimal UI and implement features for the user profile in the Zuri Chat App"),
                          description(
                              text3:
                                  "	I lead our documentation team to solve the problem of proper documentation using Docusaurus for the Zuri Chat App and Web versions."),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.purple,
                    )),
              ),
              Container(
                height: size.height / 3,
                width: size.width,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    ExperWidget(
                      text1: 'Mobile developer',
                      text2: 'APR 2021 – JUN  2021',
                      widget: Column(
                        children: [
                          description(
                              text3:
                                  "	I worked with a team of android Engineers to develop an app that carters for a student’s accommodation need."),
                          description(
                              text3:
                                  "	Made key contributions to the team for the success of our application.."),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.purple,
                    )),
              ),
              Container(
                height: size.height / 3,
                width: size.width,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    ExperWidget(
                      text1: 'Finance Assistant',
                      text2: 'Dec 2019 – Jan 2021',
                      widget: Column(
                        children: [
                          description(
                              text3:
                                  " 	I updated financial data, verify the information and ensure that every document is rightly used and stored."),
                          description(
                              text3:
                                  "		Worked with the finance manager in handling the daily finance duties.."),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.purple,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExperWidget extends StatelessWidget {
  const ExperWidget({
    Key? key,
    required this.text1,
    required this.text2,
    required this.widget,
  }) : super(key: key);

  final String text1;
  final String text2;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Container(child: widget),
      ],
    );
  }
}

class description extends StatelessWidget {
  const description({
    Key? key,
    required this.text3,
  }) : super(key: key);

  final String text3;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: ".",
            style: TextStyle(
              color: Colors.purple,
              fontWeight: FontWeight.w500,
              fontSize: 50,
            ),
          ),
          TextSpan(
            text: text3,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
