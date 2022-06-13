import 'dart:ui';

class PopularModel{

  String? images;
  String? name;
  String? rate;
  Color? color;

  PopularModel({required this.images,required this.name,required this.rate,required this.color});

  factory PopularModel.fromJson(Map<String,dynamic>json){
    return PopularModel(
        images: json['images'],
        name: json['name'],
        rate: json['rate'],
        color: json['color']
    );
  }
  Map<String,dynamic>toJson(){
    final Map<String,dynamic> tojson=Map<String,dynamic>();
    tojson['images']=this.images;
    tojson['name']=this.name;
    tojson['rate']=this.rate;
    tojson['color']=this.color;
    return tojson;
  }
}

