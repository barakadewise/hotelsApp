import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    String? selectedValue = 'Today';
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: size.width,
                  height: 200,
                  child: Image.asset(
                    'assets/img/pp4.jpg',
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
            Positioned(
                top: 20,
                right: 0,
                left: 0,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(CupertinoIcons.arrow_left),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(CupertinoIcons.bookmark),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 105,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color(0xff070F2B),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      height: 120,
                      width: size.width,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Book a table',
                                  style: TextStyle(color: Colors.white),
                                ),
                                DropdownButton(
                                  isExpanded: false,
                                  value: selectedValue,
                                  items: const [
                                    DropdownMenuItem(
                                      child: Text(
                                        'Today',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      value: 'Today',
                                    ),
                                    DropdownMenuItem(
                                      child: Text('Tommorrow'),
                                      value: 'Tommorow',
                                    ),
                                    DropdownMenuItem(
                                      child: Text('Next week'),
                                      value: 'Next week',
                                    )
                                  ],
                                  onChanged: (newValue) {
                                    setState(() {
                                      selectedValue = newValue;
                                    });
                                  },
                                  underline: Container(
                                    height: 0,
                                    color: Colors.transparent,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
