import 'package:flutter/material.dart';

import 'widgets/drawer.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const AppDrawer(),
      body: const SafeArea(
        child: Center(
          child: Text('About me Page'),
        ),
      ),
    );
  }
}
