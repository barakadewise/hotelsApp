import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/category_card.dart';
import '../components/popular_places_card.dart';
import '../models/popular_places_model.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
  
    final List<String> category = [
      'Restaurant',
      'Pub',
      'Hotel',
      'Motel',
      'Cafes'
    ];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffe9eaec),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(color: Color(0xff070F2B)),
                    child: SizedBox(
                      height: size.height * 0.35,
                      width: size.width,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 140,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Explore new',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 25),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Places',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 25),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.31,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70,
                          width: size.width,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              // decoration: BoxDecoration(boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.black
                              //         .withOpacity(0.2), // Shadow color
                              //     spreadRadius: 0.1, // Spread radius
                              //     blurRadius: 0.11, // Blur radius
                              //     offset: const Offset(0, 1), // Offset
                              //   ),
                              // ]),
                              width: double.infinity,
                              height: 70,
                              child: TextFormField(
                                style: const TextStyle(fontSize: 18),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: 'What are  you searching for?',
                                  hintStyle: const TextStyle(fontSize: 15),
                                  contentPadding: const EdgeInsets.all(15),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.white),
                                      borderRadius:
                                          BorderRadius.circular(25.0)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.white),
                                      borderRadius:
                                          BorderRadius.circular(25.0)),
                                  suffixIcon: const Icon(
                                    CupertinoIcons.search,
                                    color: Color(0xffCB997E),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                            height: 60,
                            width: size.width,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 4),
                                  child: CategoryCard(name: category[0]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 4),
                                  child: CategoryCard(name: category[1]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 4),
                                  child: CategoryCard(name: category[2]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 4),
                                  child: CategoryCard(name: category[3]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 4),
                                  child: CategoryCard(name: category[4]),
                                ),
                              ],
                            )),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          width: size.width,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Popular restaurants',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20),
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Row(
                                          children: [
                                            Text(
                                              'View all ',
                                              style: TextStyle(
                                                  color: Color(0xffCB997E),
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 18),
                                            ),
                                            Icon(
                                                Icons
                                                    .arrow_forward_ios_outlined,
                                                size: 18,
                                                color: Color(0xffe7a97d))
                                          ],
                                        ))
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: size.width,
                                height: 220,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: popularPlacelist.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 5),
                                        child: PopularPlacesCard(
                                            imageName: popularPlacelist[index]
                                                .imageName,
                                            rate: popularPlacelist[index].rate),
                                      );
                                    }),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 70,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
