import 'package:flutter/material.dart';
import 'package:kidsenglish/services/advert-service.dart';
import 'package:kidsenglish/widgets/cardOlustur.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FruitPage extends StatefulWidget {
  Color appbarColor;
  FruitPage({this.appbarColor});
  @override
  _FruitPageState createState() => _FruitPageState();
}

class _FruitPageState extends State<FruitPage> {
   final AdvertService _advertService = AdvertService();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Meyveler",style: TextStyle(fontFamily:"agent",color: Colors.indigo[900],fontWeight: FontWeight.bold)), centerTitle: true,backgroundColor: widget.appbarColor,),
      body: _fruitsWidget(),
       backgroundColor:widget.appbarColor==Colors.cyan[600]? Colors.cyan[100]:Colors.pink[100],
    );
  }

  _fruitsWidget() {
    
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/fruits/apple.png",
                      english: "apple",
                      folder: "fruits",
                      turkish: "elma"),
                  CardOlustur(
                      imgpath: "assets/images/fruits/banana.png",
                      english: "banana",
                      folder: "fruits",
                      turkish: "muz")
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/fruits/grapes.png",
                      english: "grapes",
                      folder: "fruits",
                      turkish: "üzüm"),
                  CardOlustur(
                      imgpath: "assets/images/fruits/kiwi.png",
                      english: "kiwi",
                      folder: "fruits",
                      turkish: "kivi")
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/fruits/orange.png",
                      english: "orange",
                      folder: "fruits",
                      turkish: "portakal"),
                  CardOlustur(
                      imgpath: "assets/images/fruits/pear.png",
                      english: "pear",
                      folder: "fruits",
                      turkish: "armut")
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/fruits/pineapple.png",
                      english: "pineapple",
                      folder: "fruits",
                      turkish: "ananas"),
                  CardOlustur(
                      imgpath: "assets/images/fruits/strawberry.png",
                      english: "strawberry",
                      folder: "fruits",
                      turkish: "çilek")
                ],
              ),
            ]),
          ),
        );
      }
   
  }
 

