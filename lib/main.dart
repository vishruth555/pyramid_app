import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'pyramid demo',
      theme:
          new ThemeData(primarySwatch: Colors.green, canvasColor: Colors.green),
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu_rounded),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.notifications_none_rounded))
          ],
        ),
        bottomNavigationBar: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search_rounded), label: 'Product'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.compare_arrows_rounded),
                    label: 'Transaction'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.perm_identity_rounded), label: 'Account'),
              ],
            ),
          ),
        ),
        body: const Column(
          children: [
            // header text

            //big card

            //best plans which is side scrollable

            //investment guide which is vertical scrollable

            //bottom navigation
          ],
        ),
      ),
    );
  }
}
