import 'package:flutter/material.dart';
import 'package:news_api_2110020078/pages/automotive_page.dart';
import 'package:news_api_2110020078/pages/profil_page.dart';
import 'package:news_api_2110020078/pages/sports_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Menu",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.reorder,
            color: Colors.black,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.black,
                )),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => automotive()),
                        ),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 4.0,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            children: [
                              const Icon(
                                Icons.directions_car,
                                size: 140,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Text(
                        "Automotive",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0, // Set the desired font size
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Sports()),
                        ),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 4.0,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            children: [
                              const Icon(
                                Icons.sports_soccer,
                                size: 140,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Text(
                        "Sports",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0, // Set the desired font size
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()),
                        ),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 4.0,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            children: [
                              const Icon(
                                Icons.person,
                                size: 140,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Text(
                        "Profile",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0, // Set the desired font size
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      InkWell(
                        //onTap: () => Navigator.pushNamed(context, ""),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.transparent,
                                width: 3.0,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            children: [
                              const Icon(
                                Icons.bookmark_add,
                                color: Colors.transparent,
                                size: 140,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Text(
                        "Favorite",
                        style: TextStyle(
                          color: Colors.transparent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0, // Set the desired font size
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
