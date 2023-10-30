import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.grey.shade100,
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
              backgroundColor: Colors.grey.shade100,
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
        body: Column(
          children: [
            // header text
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 75, 20),
              child: Text(
                'Welcome, Jessie.',
                style: GoogleFonts.bebasNeue(
                  fontSize: 50,
                ),
              ),
            ),

            //big card
            Center(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  height: 140,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      colors: [
                        Colors.lightGreen.shade600,
                        Colors.green.shade500,
                        Colors.green.shade600,
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: Container(
                    //actual content
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 50, 5),
                            child: Text(
                              'Your total Asset portfolio',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(18, 0, 22, 15),
                                child: Text(
                                  'N203,935',
                                  style: GoogleFonts.poppins(
                                      fontSize: 35,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18, vertical: 10),
                                  child: Text(
                                    'invest now',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ), //declare your widget here
                ),
              ),
            )

            //best plans which is side scrollable

            //investment guide which is vertical scrollable

            //bottom navigation
          ],
        ),
      ),
    );
  }
}
