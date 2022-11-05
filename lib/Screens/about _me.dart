import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets/drawer.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  final Uri _twitter= Uri.parse('https://twitter.com/bluebunny402');
  String _emailAddress = 'annabelilo2017@gmail.com';
  final Uri _linkedIn = Uri.parse('https://www.linkedin.com/in/chidiebere-ilo-14b2461a6/');
  final Uri _git = Uri.parse('https://github.com/annabel-ilo');

  Future<void> twitterLink(Uri fbkLink) async {
    if (!await launchUrl(
      _twitter,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_twitter';
    }
  }
   Future<void> linkedInLink(Uri fbkLink) async {
    if (!await launchUrl(
      _linkedIn,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_linkedIn';
    }
  }
   Future<void> gitLink(Uri fbkLink) async {
    if (!await launchUrl(
      _git,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_git';
    }
  }

  Future<void> _sendEmail(String email) async {
    final Uri launchUri = Uri(scheme: 'mailto', path: email);
    await launchUrl(launchUri);
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        height: size.height /7,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                "Send me a message",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed:() => twitterLink(_twitter),
                  child: Socials(child: Image.asset('assets/images/twitterIcon.png'))),
                TextButton(
                  onPressed: ()=> linkedInLink(_linkedIn),
                  child: Socials(child: Image.asset('assets/images/linkedIn.png'))),
                TextButton(
                  onPressed: ()=>_sendEmail(_emailAddress),
                  child: Socials(child: Image.asset('assets/images/gmailIcon.png'))),
                TextButton(
                  onPressed: ()=> gitLink(_git),
                  child: Socials(child: Image.asset('assets/images/gitIcon.png'))),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('About ME'),
      ),
      drawer: const AppDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 22, right: 22),
          child: ListView(
            children: [
              Container(
                height: size.height / 2.5,
                // width: size.width,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: size.height / 3,
                      child: Image.asset(
                        'assets/images/IMG_20180601_083247.jpg',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10),
                      child: Text(
                        'Chidiebere Annabel Ilo',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [
                      0.1,
                      0.4,
                      0.6,
                      0.9,
                    ],
                    colors: [
                      Colors.purple,
                      Colors.redAccent,
                      Colors.indigo,
                      Color.fromARGB(255, 236, 225, 226),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(8),
                child: const Text(
                  "As an efficient and committed software engineer, I utilize Flutter Framework and Dart programming language to create beautiful and responsive Mobile applications.  Linux, Apache, MySql,Ansible,and BashScript for Cloud engineering and Markdown writing for documentation.\n\nI studied banking and finance, started a career path in finance as an assistant finance officer prior to the kick off of my tech career as an android mobile engineer with kotlin.\n\nwhen I'm not programming, you are likely to find me by the pool side, the gym or at the movies.\n\nI'm currently studying cloud engineering with altschool Africa,actively working as a flutter developer with TrybeOne and undergoing the recent HNG Internship.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 236, 225, 226),
                    borderRadius: BorderRadius.circular(15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Socials extends StatelessWidget {
  const Socials({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      child: child,
    );
  }
}
