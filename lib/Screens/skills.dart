import 'package:flutter/material.dart';
import 'package:meet_annabel/Screens/widgets/drawer.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(title: const Text('Skills')),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 22, right: 22),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Technology',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              height: size.height / 4,
              width: size.width,
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextWidget(txt: 'Flutter'),
                  TextWidget(txt: 'GitHub'),
                  TextWidget(txt: 'Firebase'),
                  TextWidget(txt: 'Ansible'),
                  TextWidget(txt: 'MySql'),
                ],
              ),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 236, 225, 226),
                  borderRadius: BorderRadius.circular(15)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Language',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              height: size.height / 4,
              width: size.width,
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextWidget(txt: 'Dart'),
                  TextWidget(txt: 'Html/Css'),
                  TextWidget(txt: 'JavaScript'),
                  TextWidget(txt: 'Kotlin'),
                  TextWidget(txt: 'BashScript'),
                  TextWidget(txt: 'Linux'),
                ],
              ),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 236, 225, 226),
                  borderRadius: BorderRadius.circular(15)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Soft Skills',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              height: size.height / 4,
              width: size.width,
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextWidget(txt: 'Attention to details'),
                  TextWidget(txt: 'Critical Thinking'),
                  TextWidget(txt: 'Phone Etiqette'),
                  TextWidget(txt: 'Commitment'),
                ],
              ),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 236, 225, 226),
                  borderRadius: BorderRadius.circular(15)),
            ),
          ],
        ),
      )),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.txt,
  }) : super(key: key);
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
