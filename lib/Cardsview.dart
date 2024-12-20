import 'package:flutter/material.dart';

class widgetVie extends StatefulWidget {
  String pic;
  String Tic;

  widgetVie({super.key, required this.pic, required this.Tic});

  @override
  State<widgetVie> createState() => _widgetVieState();
}

class _widgetVieState extends State<widgetVie> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 140,
        width: 140,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
                image: NetworkImage(widget.pic), fit: BoxFit.cover)),
        margin: EdgeInsets.symmetric(horizontal: 8),
      ),
      SizedBox(height: 10),
      Container(padding: EdgeInsets.only(left: 10),

          width: 150,
          child: Text(
        widget.Tic,
        style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
      ))
    ]);
  }
}
