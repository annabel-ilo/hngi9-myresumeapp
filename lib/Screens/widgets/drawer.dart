import 'package:flutter/material.dart';
import 'package:meet_annabel/const/route.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppBar(
              title: const Text('Meet Annabel'),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('About Me'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed(aboutMeRoute);
              },
            ),
            const Divider(thickness: 5.0),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text('Education'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed(educationRoute);
              },
            ),
            const Divider(thickness: 5.0),
            ListTile(
              leading: const Icon(Icons.work),
              title: const Text('Experience'),
              onTap: () {
                Navigator.of(context).pushNamed(experienceRoute);
              },
            ),
            const Divider(thickness: 5.0),
            ListTile(
              leading: const Icon(Icons.construction),
              title: const Text('Project'),
              onTap: () {
                Navigator.of(context).pushNamed(projectRoute);
              },
            ),
            const Divider(thickness: 5.0),
            ListTile(
              leading: const Icon(Icons.computer),
              title: const Text('Skills'),
              onTap: () {
                Navigator.of(context).pushNamed(skillsRoute);
              },
            ),
            const Divider(thickness: 5.0),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.of(context).pushNamed(settingsRoute);
              },
            )
          ],
        ),
      ),
    );
  }
}
