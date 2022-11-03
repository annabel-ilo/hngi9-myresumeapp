import 'package:flutter/material.dart';

import 'widgets/drawer.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: AppDrawer(),
      body: SafeArea(
        
        child: Center(
          child: Text('education page'),
        ),
      ),
    );
  }
}
