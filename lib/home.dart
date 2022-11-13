import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'detals_order-product.dart';

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
          body_page(context),
          Positioned(
            bottom: 45,
            left: 10,
            right: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                height: 70,
                width: double.infinity,
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10.0,
                    sigmaY: 10.0,
                  ),
                  child: Container(
                    color: Colors.white10.withOpacity(0.2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          CupertinoIcons.home,
                          color: Colors.white70,
                        ),
                        Icon(
                          CupertinoIcons.location_solid,
                          color: Colors.white70,
                        ),
                        Icon(
                          CupertinoIcons.bag,
                          color: Colors.white70,
                        ),
                        Icon(
                          CupertinoIcons.person,
                          color: Colors.white70,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  body_page(BuildContext contex) {
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
              menu_options_list(),
              const SizedBox(height: 15),
              list_details_card_options_menu(context: contex),
              const SizedBox(height: 25),
              SizedBox(
                height: 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Recommended",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(fontSize: 12, color: Colors.white54),
                        ),
                      ],
                    ),
                    const Text(
                      "20+ Pizza",
                      style: TextStyle(fontSize: 12, color: Colors.white54),
                    ),
                    details_card_recommended(
                        context: contex,
                        Img: "assets/01.png",
                        Item: "Peperone Pizza",
                        subItem: "Molho Especial",
                        price: "7,40",
                        Icone: CupertinoIcons.cart),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  details_card_recommended(
      {required String Img,
      required String Item,
      required String subItem,
      required String price,
      required IconData Icone,
      required BuildContext context}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 100,
      width: 400,
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.white30.withOpacity(0.2),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Image.asset(
              "assets/02.png",
              fit: BoxFit.fill,
            ),
          ),
          Stack(
            children: [
              ClipPath(
                clipper: CustomClipPath(),
                child: Container(
                  width: 215,
                  height: 100,
                  color: Colors.black54,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Item,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          subItem,
                          style: const TextStyle(
                              color: Colors.white12,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 20,
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "R\$",
                                    style: TextStyle(
                                        color: Colors.pink, fontSize: 10),
                                  ),
                                ],
                              ),
                              Text(
                                price,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    CupertinoPageRoute(
                        builder: (context) => DetalsOrderPoduts()),
                  ),
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      ),
                    ),
                    child: Icon(
                      Icone,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  menu_options_list() {
    return Container(
      height: 40,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          card_options(Icone: CupertinoIcons.folder_open, Title: "All"),
          card_options(Icone: CupertinoIcons.folder_open, Title: "Pizza"),
          card_options(Icone: CupertinoIcons.folder_open, Title: "Bureger"),
          card_options(Icone: CupertinoIcons.folder_open, Title: "Dinks"),
        ],
      ),
    );
  }

  card_options({
    required IconData Icone,
    required String Title,
  }) {
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

  details_card_options_menu(
      {required String Img,
      required String Item,
      required String subItem,
      required String price,
      required IconData Icone,
      required BuildContext contex}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 140,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 50,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: 140,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    Item,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    subItem,
                    style: const TextStyle(
                        color: Colors.white12,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 20,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "R\$",
                              style:
                                  TextStyle(color: Colors.pink, fontSize: 10),
                            ),
                          ],
                        ),
                        Text(
                          price,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.white30.withOpacity(0.2),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Image.asset(
              "assets/02.png",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: () => Navigator.of(contex).push(
                CupertinoPageRoute(builder: (context) => DetalsOrderPoduts()),
              ),
              child: Container(
                width: 35,
                height: 35,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                ),
                child: Icon(
                  Icone,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  list_details_card_options_menu({required BuildContext context}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 230,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (c, i) => details_card_options_menu(
              Img: "assets/01.png",
              Item: "Peperone Pizza",
              subItem: "Molho Especial",
              price: "7,40",
              Icone: CupertinoIcons.cart,
              contex: context)),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.0383333, size.height * 0.5000000);
    path0.quadraticBezierTo(
        size.width * 0.0371000, size.height * 0.2771000, 0, 0);
    path0.lineTo(size.width, 0);
    path0.lineTo(size.width, size.height);
    path0.lineTo(0, size.height);
    path0.quadraticBezierTo(size.width * 0.0378667, size.height * 0.7276000,
        size.width * 0.0383333, size.height * 0.5000000);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
