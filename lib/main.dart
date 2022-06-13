import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uiwork/model/ProductModel.dart';
import 'package:uiwork/indicator/circle_tabindicator.dart';
import 'package:uiwork/customcard/customcard.dart';
import 'package:uiwork/customcard/yantdetail.dart';
import 'package:uiwork/model/popularmodel.dart';
import 'package:uiwork/screen/yanchtdetail.dart';

import 'tabbar/customtabbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yacht',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{

  List<ProductModel> prDetail=[
    ProductModel(images: "images/y1.png", name: "Atlantida", price: "1000 "),
    ProductModel(images: "images/y2.png", name: "Aurora", price: "2000 "),
    ProductModel(images: "images/y3.png", name: "Escape", price: "3000 "),
    ProductModel(images: "images/y4.png", name: "My Way", price: "4000 "),
    ProductModel(images: "images/y5.png", name: "Destiny", price: "5000 "),
    ProductModel(images: "images/y6.png", name: "Andiamo", price: "6000 "),
  ];

  List<ProductModel> selling=[
    ProductModel(images: "images/y8.png", name: "Cold Water", price: "7000 "),
    ProductModel(images: "images/y9.png", name: "Ocean Babe", price: "8000 "),
  ];

  List<ProductModel> motor=[
    ProductModel(images: "images/y10.png", name: "The Dock", price: "9000 "),
    ProductModel(images: "images/y11.png", name: "Six feet Under", price: "10000 "),
    ProductModel(images: "images/y12.png", name: "Down by the River", price: "11000 "),
    ProductModel(images: "images/y13.png", name: "The Islanders", price: "12000 "),
  ];

  List<PopularModel> prDetail2=[
    PopularModel(images: "images/y9.png", name: "Ocean Babe", rate: "4.9",color: Colors.black),
    PopularModel(images: "images/y10.png", name: "The Dock", rate: "3.9",color: Colors.red.shade600),
    PopularModel(images: "images/y13.png", name: "The Islanders", rate: "4.2",color: Colors.green.shade700),
    PopularModel(images: "images/y4.png", name: "My Way", rate: "5.0",color: Colors.pinkAccent.shade700),
    PopularModel(images: "images/y5.png", name: "Destiny", rate: "4.0",color: Colors.orangeAccent.shade700),
    PopularModel(images: "images/y6.png", name: "Andiamo", rate: "4.8",color: Colors.brown.shade700),
  ];

  @override
  Widget build(BuildContext context) {
    final TabController _tabController= TabController(length: 3, vsync: this);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
         children: [
           Align(
             alignment: Alignment.topRight,
             child: Container(
               width: 50,
               height: MediaQuery.of(context).size.height,
               color: Colors.black12,
             ),
           ),
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
                   children: const[
                     Icon(Icons.arrow_back_ios_rounded,color: Colors.black45,),
                     Icon(Icons.zoom_out_map,color: Colors.black45,)
                   ],
                 ),
               ),
               SizedBox(
                 height: 20,
               ),
               Text(' Yacht',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
               Text(' Charters',style: TextStyle(fontSize: 28),),
               // TextButton(onPressed: (){
               //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => customTabbar()));
               // }, child: Text('dasdasd')),
               RotatedBox(
                 quarterTurns: 3,
                 child: Row(
                   children: [
                     TabBar(
                       controller: _tabController,
                       labelColor: Colors.black,
                       unselectedLabelColor: Colors.black38,
                       isScrollable: true,
                       //indicatorColor: Colors.black,
                       indicator: CircleTabIndicator(color: Colors.black, radius: 5),
                       labelPadding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                       tabs: [
                         Tab(text: "Motor"),
                         Tab(text: "Selling"),
                         Tab(text: "Motor - Selling"),
                       ],
                     ),
                   ],
                 ),
               ),
               SizedBox(height: 40,),
               Text(" Popular",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
               Row(
                   mainAxisAlignment: MainAxisAlignment.center, children: [
                 Expanded(
                   child: SizedBox(
                     height: 230.0,
                     child: ListView.builder(
                       scrollDirection: Axis.vertical,
                       itemCount: prDetail2.length,
                       primary: true,
                       itemBuilder: (BuildContext ctxt, int index) {
                         return CustomCard(
                           str: prDetail2[index].images,
                           txt: prDetail2[index].name,
                           rate: prDetail2[index].rate,
                           color: prDetail2[index].color,
                         );
                       },
                     ),
                   ),
                 ),
               ]),
             ],
           ),
           Padding(
             padding: const EdgeInsets.only(top: 200,left: 90),
             child: SizedBox(
               height: 300,
               child: TabBarView(
                   controller: _tabController,
                   children: [
                     //1
                     Row(
                         mainAxisAlignment: MainAxisAlignment.center, children: [
                       Expanded(
                         child: SizedBox(
                           height: 300.0,
                           child: ListView.builder(
                             scrollDirection: Axis.horizontal,
                             itemCount: prDetail.length,
                             primary: true,
                             itemBuilder: (BuildContext ctxt, int index) {
                               return CustomTabCard(
                                 image: prDetail[index].images,
                                 price: prDetail[index].price,
                                 name: prDetail[index].name,
                                 ontap: (){
                                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => YanchtDetail(
                                     image: prDetail[index].images,
                                     price: prDetail[index].price,
                                     ytext: prDetail[index].name,
                                   )));
                                 },
                               );
                             },
                           ),
                         ),
                       ),
                     ]),
                     //2
                     Row(
                         mainAxisAlignment: MainAxisAlignment.center, children: [
                       Expanded(
                         child: SizedBox(
                           height: 300.0,
                           child: ListView.builder(
                             scrollDirection: Axis.horizontal,
                             itemCount: selling.length,
                             primary: true,
                             itemBuilder: (BuildContext ctxt, int index) {
                               return CustomTabCard(
                                 image: selling[index].images,
                                 price: selling[index].price,
                                 name: selling[index].name,
                                 ontap: (){
                                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => YanchtDetail(
                                     image: selling[index].images,
                                     price: selling[index].price,
                                     ytext: selling[index].name,
                                   )));
                                 },
                               );
                             },
                           ),
                         ),
                       ),
                     ]),
                     //3
                     Row(
                         mainAxisAlignment: MainAxisAlignment.center, children: [
                       Expanded(
                         child: SizedBox(
                           height: 300.0,
                           child: ListView.builder(
                             scrollDirection: Axis.horizontal,
                             itemCount: motor.length,
                             primary: true,
                             itemBuilder: (BuildContext ctxt, int index) {
                               return CustomTabCard(
                                 image: motor[index].images,
                                 price: motor[index].price,
                                 name: motor[index].name,
                                 ontap: (){
                                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => YanchtDetail(
                                     image: motor[index].images,
                                     price: motor[index].price,
                                     ytext: motor[index].name,
                                   )));
                                 },
                               );
                             },
                           ),
                         ),
                       ),
                     ]),
                   ]
               ),
             ),
           ),

         ],
        ),
      ),
    );
  }
}
