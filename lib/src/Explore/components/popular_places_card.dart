import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularPlacesCard extends StatelessWidget {
  final String imageName;
  final double rate;
  const PopularPlacesCard(
      {super.key, required this.imageName, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 290,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                    width: 290,
                    height: 115,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)),
                      child: Image.asset('assets/img/$imageName',
                          fit: BoxFit.cover),
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Bouchorie union square',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/img/res.png',
                            height: 30,
                            width: 30,
                          ),
                          const Text(
                            'Restaurant',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w200),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Color(0xffCB997E),
                          ),
                          Text(
                            '3.5 Km',
                            style: TextStyle(fontWeight: FontWeight.w200),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        '\$\$\$',
                        style: TextStyle(
                            color: Color(0xffCB997E),
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                )
              ],
            ),
            Positioned(
                top: 20,
                left: 10,
                right: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 98, 153, 100),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        rate.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white),
                      )),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(CupertinoIcons.bookmark))),
                    )
                  ],
                ))
          ],
        ));
  }
}
