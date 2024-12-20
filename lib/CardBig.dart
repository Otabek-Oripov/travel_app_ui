import 'package:flutter/material.dart';

class cardview extends StatefulWidget {
  String Pic;
  String Tex;
  String Tex2;
  String Tex3;

  cardview(
      {super.key,
      required this.Pic,
      required this.Tex,
      required this.Tex2,
      required this.Tex3});

  @override
  State<cardview> createState() => _cardviewState();
}

class _cardviewState extends State<cardview> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 230,
        width: 230,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
                image: NetworkImage(widget.Pic), fit: BoxFit.cover)),
        margin: EdgeInsets.symmetric(horizontal: 8),
      ),
      SizedBox(height: 10),
      Container(
          padding: EdgeInsets.all(3),
          margin: EdgeInsets.only(right: 35),
          width: 195,
          child: Text(
            widget.Tex,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          )),
      Container(
        margin: EdgeInsets.only(right: 15),
        width: 230,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(

              child:Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.location_on_outlined,
                      size: 27,
                    )),
                Text(
                  widget.Tex2,
                  style: TextStyle(fontSize: 17),
                ),
              ],
              )
            ),
                Text(widget.Tex3,  style: TextStyle(fontSize: 17,color: Colors.blue),)

          ],
        ),
      )
    ]);
  }
}
