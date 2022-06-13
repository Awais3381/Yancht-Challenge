import 'package:flutter/material.dart';
import 'package:uiwork/screen/checkoutyacht.dart';

class YanchtDetail extends StatefulWidget {
  final image;
  final ytext;
  final price;
  YanchtDetail({this.image,this.ytext,this.price});

  @override
  State<YanchtDetail> createState() => _YanchtDetailState();
}

class _YanchtDetailState extends State<YanchtDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade600,
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 20,right: 20,bottom: 5),
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black54,
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Text('Rent now',style: TextStyle(color: Colors.white,fontSize: 18),),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => CheckoutYacht()));
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Icon(Icons.arrow_forward,color: Colors.black54),
                ),
              )
            ]
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: Icon(Icons.arrow_back_ios_rounded,color: Colors.white,)),
                      Icon(Icons.favorite_border,color: Colors.white,)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60,left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.ytext,style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),),
                      Text("Yacht",style: TextStyle(fontSize: 25,color: Colors.white54),),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Rs",style: TextStyle(fontSize: 17,color: Colors.white54)),
                            Text(widget.price,style: TextStyle(fontSize: 17,color: Colors.white)),
                            Text("/ day",style: TextStyle(fontSize: 17,color: Colors.white54)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                      width: 270,
                      height: 420,
                      child: Image.asset(widget.image)),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 300,
                  ),
                  Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.compare_arrows,color: Colors.white,size: 15,),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("74",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w700),),
                            Text("m",style: TextStyle(fontSize: 10,color: Colors.white54),),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Lengths',style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.compare_arrows,color: Colors.white,size: 15,),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("25",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w700),),
                            Text("m",style: TextStyle(fontSize: 10,color: Colors.white54),),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Height',style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.compare_arrows,color: Colors.white,size: 15,),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("90",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w700),),
                            Text("m",style: TextStyle(fontSize: 10,color: Colors.white54),),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Draft',style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      )
    );
  }
}
