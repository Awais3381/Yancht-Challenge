import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final String? txt;
  final String? str;
  final String? rate;
  final Color? color;

  CustomCard({this.txt="",this.str="",this.rate="",this.color}) ;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Card(
            color: widget.color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Image.asset(widget.str!,height:90,width: 80,)
                // Text(widget.txt,style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            elevation: 8,
            shadowColor: Colors.blue,
            margin: EdgeInsets.all(5),
          ),
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.txt!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
            Row(
              children: [
                Icon(Icons.star,color: Colors.black,size: 13,),
                SizedBox(
                  height: 10,
                ),
                Text(widget.rate!)
              ],
            ),
          ],
        ),
      ],
    );
  }
}