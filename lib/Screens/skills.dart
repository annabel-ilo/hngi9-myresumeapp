import 'package:flutter/material.dart';
import 'package:meet_annabel/Screens/widgets/drawer.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: AppDrawer(),
      body: SafeArea(
        child: Center(
          child: Text('skills page'),
        ),
      ),
    );
  }
}
