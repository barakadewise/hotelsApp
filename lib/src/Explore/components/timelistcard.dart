import 'package:flutter/cupertino.dart';

class TimelistCard extends StatelessWidget {
  final String time;
  const TimelistCard({super.key,required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
      child: Container(
        height: 35,
        width: 80,
        decoration:  BoxDecoration(color: Color(0xffCB997E),borderRadius:BorderRadius.circular(10) ),
        child: Center(
          child: Text(time),
        ),
      ),
    );
  }
}
