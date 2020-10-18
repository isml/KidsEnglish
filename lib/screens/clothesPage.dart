import 'package:flutter/material.dart';
import 'package:kidsenglish/services/advert-service.dart';
import 'package:kidsenglish/widgets/cardOlustur.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ClothesPage extends StatefulWidget {
  Color appbarColor;
  ClothesPage({this.appbarColor});
  @override
  _ClothesPageState createState() => _ClothesPageState();
}

class _ClothesPageState extends State<ClothesPage> {
   final AdvertService _advertService = AdvertService();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Giysiler",style: TextStyle(fontFamily:"agent",color: Colors.indigo[900],fontWeight: FontWeight.bold)), centerTitle: true,
      backgroundColor: widget.appbarColor,),
      body: _clothesWidget(),
       backgroundColor:widget.appbarColor==Colors.cyan[600]? Colors.cyan[100]:Colors.pink[100],
    );
  }

  _clothesWidget() {
    
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/clothes/coat.png",
                      english: "coat",
                      folder:"clothes",
                      turkish: "kaban"),
                  CardOlustur(
                      imgpath: "assets/images/clothes/dress.png",
                      english: "dress",
                      folder:"clothes",
                      turkish: "elbise")
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   CardOlustur(
                      imgpath: "assets/images/clothes/pant.png",
                      english: "pant",
                      folder:"clothes",
                      turkish: "pantolon"),
                  CardOlustur(
                      imgpath: "assets/images/clothes/shoes.png",
                      english: "shoes",
                      folder:"clothes",
                      turkish: " ayakkabı")
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/clothes/skirt.png",
                      english: "skirt",
                      folder:"clothes",
                      turkish: "etek"),
                  CardOlustur(
                      imgpath: "assets/images/clothes/slipper.png",
                      english: "slipper",
                      folder:"clothes",
                      turkish: "terlik")
                ],
              ),
               SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/clothes/socks.png",
                      english: "socks",
                      folder:"clothes",
                      turkish: "çorap"),
                  CardOlustur(
                      imgpath: "assets/images/clothes/tshirt.png",
                      english: "tshirt",
                      folder:"clothes",
                      turkish: "tshirt")
                ],
              ),
             
              
            ]),
          ),
        );
     
  }

 
}
