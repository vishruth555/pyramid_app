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
        body: SingleChildScrollView(
          child: Column(
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
              ),

              //best plans which is side scrollable

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best Plans',
                      style: GoogleFonts.poppins(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            'See All',
                            style: GoogleFonts.poppins(
                                fontSize: 18, color: Colors.redAccent),
                          ),
                          Icon(
                            Icons.arrow_right_alt_rounded,
                            color: Colors.red,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              Container(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 30,
                      ),
                      child: Stack(
                          alignment: Alignment.bottomRight,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.transparent,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    'images/gold.png',
                                  ),
                                ),
                              ),
                              height: 150.0,
                              width: 150,
                            ),
                            Container(
                              height: 220.0,
                              width: 190,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight,
                                      colors: [
                                        Colors.deepOrange.withOpacity(0.7),
                                        Colors.orange.withOpacity(0.7),
                                      ],
                                      stops: [
                                        0.0,
                                        1.0
                                      ])),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 70, 0),
                              child: Container(
                                child: Column(
                                  children: [
                                    Text(
                                      'Gold',
                                      style: GoogleFonts.poppins(
                                          fontSize: 30, color: Colors.white),
                                    ),
                                    Text(
                                      "30% return",
                                      style: GoogleFonts.poppins(
                                          fontSize: 20, color: Colors.white54),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Stack(
                          alignment: Alignment.bottomRight,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.transparent,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    'images/plat.png',
                                  ),
                                ),
                              ),
                              height: 150.0,
                              width: 150,
                            ),
                            Container(
                              height: 220.0,
                              width: 190,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight,
                                      colors: [
                                        Colors.deepPurple.withOpacity(0.7),
                                        Colors.purple.withOpacity(0.7),
                                      ],
                                      stops: [
                                        0.0,
                                        1.0
                                      ])),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 70, 0),
                              child: Container(
                                child: Column(
                                  children: [
                                    Text(
                                      'Plat',
                                      style: GoogleFonts.poppins(
                                          fontSize: 30, color: Colors.white),
                                    ),
                                    Text(
                                      "40% return",
                                      style: GoogleFonts.poppins(
                                          fontSize: 20, color: Colors.white54),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Stack(
                          alignment: Alignment.bottomRight,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.transparent,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    'images/silver.png',
                                  ),
                                ),
                              ),
                              height: 150.0,
                              width: 150,
                            ),
                            Container(
                              height: 220.0,
                              width: 190,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight,
                                      colors: [
                                        Colors.grey.withOpacity(0.7),
                                        Colors.grey.shade600.withOpacity(0.7),
                                      ],
                                      stops: [
                                        0.0,
                                        1.0
                                      ])),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 70, 0),
                              child: Container(
                                child: Column(
                                  children: [
                                    Text(
                                      'Silver',
                                      style: GoogleFonts.poppins(
                                          fontSize: 30, color: Colors.white),
                                    ),
                                    Text(
                                      "50% return",
                                      style: GoogleFonts.poppins(
                                          fontSize: 20, color: Colors.white54),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Stack(
                          alignment: Alignment.bottomRight,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.transparent,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    'images/asc.jpg',
                                  ),
                                ),
                              ),
                              height: 150.0,
                              width: 150,
                            ),
                            Container(
                              height: 220.0,
                              width: 190,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight,
                                      colors: [
                                        Colors.green.withOpacity(0.7),
                                        Colors.lightGreen.withOpacity(0.7),
                                      ],
                                      stops: [
                                        0.0,
                                        1.0
                                      ])),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 70, 0),
                              child: Container(
                                child: Column(
                                  children: [
                                    Text(
                                      'Asc',
                                      style: GoogleFonts.poppins(
                                          fontSize: 30, color: Colors.white),
                                    ),
                                    Text(
                                      "60% return",
                                      style: GoogleFonts.poppins(
                                          fontSize: 20, color: Colors.white54),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ]),
                    ),
                  ],
                ),
              ),

              //investment guide which is vertical scrollable

              Padding(
                padding: EdgeInsets.fromLTRB(0, 25, 120, 15),
                child: Text(
                  'Investment Guide',
                  style: GoogleFonts.poppins(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Basic type of investments',
                              maxLines: 1,
                              style: GoogleFonts.poppins(
                                  fontSize: 20, color: Colors.grey.shade600),
                            ),
                            Text(
                              "This is how you set your foot for 2020 Stock Market recession. What's next in this text i dont know so i will keep typing random things",
                              maxLines: 2,
                              softWrap: true,
                            )
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/1.jpg'),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 50,
                width: 300,
                child: Divider(
                  color: Colors.grey,
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'how much you can start with eeyhsyesy',
                              maxLines: 1,
                              style: GoogleFonts.poppins(
                                  fontSize: 20, color: Colors.grey.shade600),
                            ),
                            Text(
                              "you can start with 500 rupees in your bank account, its that easy. just keep investing",
                              maxLines: 2,
                              softWrap: true,
                            )
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/2.jpeg'),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 50,
                width: 300,
                child: Divider(
                  color: Colors.grey,
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Introduction to investing. A beginners Guide to Asset classes',
                              maxLines: 1,
                              style: GoogleFonts.poppins(
                                  fontSize: 20, color: Colors.grey.shade600),
                            ),
                            Text(
                              "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...",
                              maxLines: 2,
                              softWrap: true,
                            )
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/3.jpg'),
                      )
                    ],
                  ),
                ),
              ),

              //bottom navigation
            ],
          ),
        ),
      ),
    );
  }
}
