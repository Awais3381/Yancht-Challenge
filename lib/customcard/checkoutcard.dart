import 'package:flutter/material.dart';

class CustomCheckout extends StatefulWidget {
  final String? idCardNumber;
  final String? price;
  final String? name;
  final String? image;

  CustomCheckout({this.idCardNumber="",this.price="",this.image,this.name});

  @override
  State<CustomCheckout> createState() => _CustomCheckoutState();
}

class _CustomCheckoutState extends State<CustomCheckout> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 200,
          margin: EdgeInsets.only(left: 10),
          child: Card(
            color: Colors.blue.shade700,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(5),
            child: Padding(
              padding: const EdgeInsets.only(left: 15,top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.idCardNumber!,style: TextStyle(color: Colors.white,fontSize: 20),),
                    ],
                  ),
                  SizedBox(
                    height: 170,
                  ),
                  Text("Rs "+widget.price!,style: TextStyle(color: Colors.white,fontSize: 22)),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.name!,style: TextStyle(color: Colors.white30,fontSize: 20),),
                      Image.asset(widget.image!,height: 45,width: 80,)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}