import 'package:flutter/material.dart';

import 'widgets/drawer.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: AppDrawer(),
      body: SafeArea(
        child: Center(
          child: Text('project page'),
        ),
      ),
    );
  }
}
