class CheckoutModel{

  String? idcardnmbr;
  String? images;
  String? name;
  String? price;

  CheckoutModel({required this.idcardnmbr,required this.images,required this.name,required this.price});

  factory CheckoutModel.fromJson(Map<String,dynamic>json){
    return CheckoutModel(
        idcardnmbr: json['idcardnumber'],
        images: json['images'],
        name: json['name'],
        price: json['price']
    );
  }
  Map<String,dynamic>toJson(){
    final Map<String,dynamic> tojson=Map<String,dynamic>();
    tojson['idcardnumber']=this.idcardnmbr;
    tojson['images']=this.images;
    tojson['name']=this.name;
    tojson['price']=this.price;
    return tojson;
  }
}

