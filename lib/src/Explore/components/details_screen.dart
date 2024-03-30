import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                SizedBox(
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
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
                    ),
                    const SizedBox(
                      height: 105,
                    ),
                    Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xff070F2B),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                              height: 200,
                              width: size.width,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                              value: 'Today',
                                              child: Text(
                                                'Today',
                                                style:
                                                    TextStyle(color: Colors.white),
                                              ),
                                            ),
                                            DropdownMenuItem(
                                              value: 'Tommorow',
                                              child: Text('Tommorrow'),
                                            ),
                                            DropdownMenuItem(
                                              value: 'Next week',
                                              child: Text('Next week'),
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
                                  ),
                                ],
                              ),
                            ),
                          ]
                        ),
                       
                     
                        // Positioned(
                        //     top: 70,
                        //     left: 0,
                        //     right: 0,
                        //     child: Column(
                        //       children: [
                        //         Container(
                        //           height: 70,
                        //           width: size.width,
                        //           decoration: const BoxDecoration(
                        //             color: Colors.white,
                        //           ),
                        //           child: ListView(
                        //             scrollDirection: Axis.horizontal,
                        //             children: const [
                        //               TimelistCard(time: '3:00'),
                        //               TimelistCard(time: '2:30'),
                        //               TimelistCard(time: '4:00'),
                        //               TimelistCard(time: '3:30'),
                        //               TimelistCard(time: '1:40')
                        //             ],
                        //           ),
                        //         ),
                        //         const SizedBox(
                        //           height: 10,
                        //         ),
                    
                        //         Container(
                        //           width: size.width,
                        //           height: 300,
                        //           decoration: BoxDecoration(
                        //             color: Colors.grey,
                    
                        //             borderRadius: BorderRadius.circular(20)
                        //           ),
                        //           child: Column(
                        //             children: [
                        //               SizedBox(height: 10,),
                        //               Row(
                        //                 mainAxisAlignment: MainAxisAlignment.center,
                        //                 children: [
                        //                   Container(
                        //                     height: 2,
                        //                     color: Colors.grey,
                        //                     width: 20,
                    
                        //                   ),
                        //                 ],
                        //               ),
                        //             ],
                        //           ),
                        //         )
                        //       ],
                        //     ))
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
