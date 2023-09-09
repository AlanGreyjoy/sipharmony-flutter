import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sip_ua/sip_ua.dart';

import 'home_page.dart';
import 'dialpad_page.dart';
import 'messages_page.dart';
import 'contacts_page.dart';
import 'settings_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();

  int index = 0;

  final screens = [
    const HomePage(),
    const DialpadPage(),
    const MessagesPage(),
    const ContactsPage(),
    const SettingsPage()
  ];

  final items = <Widget>[
    const Icon(Icons.home, size: 30),
    const Icon(Icons.call, size: 30),
    const Icon(Icons.sms, size: 30),
    const Icon(Icons.contacts, size: 30),
    const Icon(Icons.settings, size: 30)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: screens[index],
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => {},
          ),
          leadingWidth: 25,
          backgroundColor: Colors.grey[200],
          elevation: 0,
          title: Text('100 - Alan Spurlock',
              style: GoogleFonts.roboto(
                  color: Colors.blue[400],
                  fontWeight: FontWeight.w400,
                  fontSize: 15)),
          centerTitle: false,
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () => {},
            )
          ],
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(color: Colors.blue[400]),
          ),
          child: CurvedNavigationBar(
            backgroundColor: Colors.transparent,
            key: navigationKey,
            index: index,
            height: 60,
            items: items,
            onTap: (index) => setState(() => this.index = index),
          ),
        ));
  }
}
