import 'package:flutter/material.dart';

class CustomTabCard extends StatefulWidget {
  final String? image;
  final String? name;
  final String? price;
  final Function()? ontap;

  CustomTabCard({this.image="",this.name="",this.price="",this.ontap}) ;

  @override
  State<CustomTabCard> createState() => _CustomTabCardState();
}

class _CustomTabCardState extends State<CustomTabCard> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: widget.ontap,
          child: Container(
            width: 250,
            margin: EdgeInsets.only(left: 10),
            child: Card(
              color: Colors.blue.shade700,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("images/y7.png",height:20,width: 20,),
                              Text(" #Yachnt",style: TextStyle(color: Colors.white),),
                            ],
                          ),
                          Icon(Icons.favorite_border,color: Colors.white,)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Center(child: Image.asset(widget.image!,height:140,width: 230,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8,top: 8),
                      child: Text(widget.name!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text("Yacht",style: TextStyle(fontSize: 17,color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Rs",style: TextStyle(fontSize: 17,color: Colors.white54)),
                          Text(widget.price!,style: TextStyle(fontSize: 17,color: Colors.white)),
                          Text("/ day",style: TextStyle(fontSize: 17,color: Colors.white54)),
                        ],
                      ),
                    ),
                    // Text(widget.txt,style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              elevation: 8,
              shadowColor: Colors.blue,
              margin: EdgeInsets.all(5),
            ),
          ),
        ),
      ],
    );
  }
}