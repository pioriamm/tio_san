import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/4296866.png",
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10.0,
                sigmaY: 10.0,
              ),
              child: Container(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
          ),
          header(),
        ],
      ),
    );
  }

  SafeArea header() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://lh3.googleusercontent.com/a/ALm5wu03P5ClI1PRgMRDcCfaEnWkwwsJS1wrpyXBI3hqzYE=s96-c-rg-br100'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style:
                              TextStyle(fontSize: 10, color: Colors.grey[50]),
                        ),
                        const Text(
                          "Marcelo Santos",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Spacer(),
                    const CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.grey,
                      child: Icon(
                        size: 15,
                        CupertinoIcons.bell_solid,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              CupertinoIcons.search,
                              color: Colors.grey,
                            ),
                            hintText: 'Pizza, Bruguer, Drink',
                            hintStyle: TextStyle(color: Colors.white24)),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        CupertinoIcons.arrow_right_arrow_left_square,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    card_options(
                        Icone: CupertinoIcons.folder_open, Title: "All"),
                    card_options(
                        Icone: CupertinoIcons.folder_open, Title: "Pizza"),
                    card_options(
                        Icone: CupertinoIcons.folder_open, Title: "Bureger"),
                    card_options(
                        Icone: CupertinoIcons.folder_open, Title: "Dinks"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container card_options({required IconData Icone, required String Title}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 35,
      width: 90,
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icone),
          Text(Title),
        ],
      ),
    );
  }
}
