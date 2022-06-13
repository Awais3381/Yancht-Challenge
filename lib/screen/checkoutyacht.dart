import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uiwork/customcard/checkoutcard.dart';
import 'package:uiwork/model/checkoutmodel.dart';

class CheckoutYacht extends StatefulWidget {
  const CheckoutYacht({Key? key}) : super(key: key);

  @override
  State<CheckoutYacht> createState() => _CheckoutYachtState();
}

class _CheckoutYachtState extends State<CheckoutYacht> {
  int quantity=1;
  int price=1000;
  List<CheckoutModel> checkout=[
    CheckoutModel(idcardnmbr: "**** 1234", images: "images/y14.png", name: "Platinum", price: "2000"),
    CheckoutModel(idcardnmbr: "**** 2233", images: "images/y15.png", name: "Debit", price: "3000")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black54,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 25),
              child: Text('Pay now',style: TextStyle(color: Colors.white,fontSize: 18),),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20,right: 20,bottom: 5),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black54,
            ),
            child: Icon(Icons.tag_faces,color: Colors.white,size: 30,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  InkWell(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back_ios_rounded,color: Colors.black45,)),
                  SizedBox(height: 40,),
                  Text(" Checkout",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 30,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Days"),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 50,
                              width: 110,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.blue.shade600,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                      onTap:(){
                                        setState(() {
                                          if(quantity<2){

                                          }
                                          else{
                                            quantity--;
                                            getPrice();
                                          }
                                        });
                                      },
                                      child: Icon(Icons.indeterminate_check_box,color: Colors.white,)),
                                  Text(quantity.toString(),style: TextStyle(fontSize: 18,color: Colors.white),),
                                  InkWell(
                                      onTap: (){
                                        setState(() {
                                          quantity++;
                                          getPrice();
                                        });
                                      },
                                      child: Icon(Icons.add_circle,color: Colors.white,))
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(color: Colors.black45, height: 60, width: 2,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Total"),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Rs "+getPrice().toString(),style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 90,),
                  Text(" Payments Cards",style: TextStyle(fontSize: 20),),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center, children: [
                    Expanded(
                      child: SizedBox(
                        height: 320.0,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (BuildContext ctxt, int index) {
                            return CustomCheckout(
                              image: checkout[index].images,
                              name: checkout[index].name,
                              price: checkout[index].price,
                              idCardNumber: checkout[index].idcardnmbr,
                            );
                          },
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  getPrice() {
    return price*quantity;
  }
}

