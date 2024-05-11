import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:stateful_widget_assignment/data/data.dart';

import 'package:stateful_widget_assignment/widgets/product_card.dart';

class MyBag extends StatefulWidget {
  const MyBag({super.key});

  @override
  State<MyBag> createState() => _MyBagState();
}

class _MyBagState extends State<MyBag> {
  String totalPrice() {
    int total = 0;
    for (int i = 0; i < 3; i++) {
      total += productList[i].price * productList[i].itemCount;
    }
    return total.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff7f7f7),
        appBar: AppBar(
          backgroundColor: const Color(0xfff7f7f7),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        body: OrientationBuilder(builder: (context, orientation) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      "My Bag",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize:
                              orientation == Orientation.portrait ? 30 : 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: orientation == Orientation.portrait
                        ? null
                        : MediaQuery.of(context).size.height / 2.28,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: productList.length,
                      itemBuilder: (context, index) {
                        return ProductCard(
                          product: productList[index],
                          stateUpdate: () {
                            setState(() {});
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Total amount:',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Text(
                          '${totalPrice()}\$',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: GoogleFonts.inter().fontFamily),
                        ),
                      ],
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: SizedBox(
                            height: orientation == Orientation.portrait
                                ? 50
                                : MediaQuery.of(context).size.height / 7.36,
                            width: orientation == Orientation.portrait
                                ? double.infinity
                                : 400,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffDB3022)),
                                onPressed: () {
                                  ScaffoldMessenger.of(context)
                                      .clearSnackBars();
                                  if (totalPrice() != '0') {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                            backgroundColor: Color(0xffDB3022),
                                            duration: Duration(seconds: 1),
                                            content: Text(
                                              'Congratulation!!!',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            )));
                                  } else {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                            duration: Duration(seconds: 1),
                                            content: Text(
                                              'Please Add Item',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            )));
                                  }
                                },
                                child: const Text(
                                  'CHECK OUT',
                                  style: TextStyle(color: Colors.white),
                                ))),
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        }));
  }
}
