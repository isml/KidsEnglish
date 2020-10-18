import 'package:flutter/material.dart';
import 'package:kidsenglish/services/advert-service.dart';
import 'package:kidsenglish/widgets/cardOlustur.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FoodsPage extends StatefulWidget {
  Color appbarColor;
  FoodsPage({this.appbarColor});
  @override
  _FoodsPageState createState() => _FoodsPageState();
}

class _FoodsPageState extends State<FoodsPage> {
   final AdvertService _advertService = AdvertService();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Yemekler",style: TextStyle(fontFamily:"agent",color: Colors.indigo[900],fontWeight: FontWeight.bold)), centerTitle: true,
      backgroundColor: widget.appbarColor,),
      body: _foodsWidget(),
       backgroundColor:widget.appbarColor==Colors.cyan[600]? Colors.cyan[100]:Colors.pink[100],
    );
  }

  _foodsWidget() {
    
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/foods/bread.png",
                      english: "bread",
                      folder: "foods",
                      turkish: "ekmek"),
                  CardOlustur(
                      imgpath: "assets/images/foods/egg.png",
                      english: "egg",
                      folder: "foods",
                      turkish: "yumurta")
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/foods/hamburger.png",
                      english: "hamburger",
                      folder: "foods",
                      turkish: "hamburger"),
                  CardOlustur(
                      imgpath: "assets/images/foods/hotdog.png",
                      english: "hotdog",
                      folder: "foods",
                      turkish: " sosisli\nsandviç")
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/foods/pizza.png",
                      english: "pizza",
                      folder: "foods",
                      turkish: "pizza"),
                  CardOlustur(
                      imgpath: "assets/images/foods/sandwich.png",
                      english: "sandwich",
                      folder: "foods",
                      turkish: "sandviç")
                ],
              ),
            ]),
          ),
        );
      
   
  }
 
}
