import 'package:flutter/material.dart';

import 'widgets/drawer.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project'),
      ),
      drawer: const AppDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 22, right: 22),
          child: Column(
            children: [
              Container(
                height: size.height / 5,
                width: size.width,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 236, 225, 226),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: ListTile(
                      title: Text('ZuriChat'),
                      subtitle: Text('Available on Play Store')),
                ),
              ),
              Container(
                height: size.height / 6,
                width: size.width,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 236, 225, 226),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: ListTile(
                      title: Text('U Mobile'),
                      subtitle: Text('Available on Play Store')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
