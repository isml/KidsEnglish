import 'package:flutter/material.dart';
import 'package:kidsenglish/services/advert-service.dart';
import 'package:kidsenglish/widgets/cardOlustur.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ColorsPage extends StatefulWidget {
  Color appbarColor;
  ColorsPage({this.appbarColor});
  @override
  _ColorsState createState() => _ColorsState();
}

class _ColorsState extends State<ColorsPage> {
   final AdvertService _advertService = AdvertService();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Renkler",style: TextStyle(fontFamily:"agent",color: Colors.indigo[900],fontWeight: FontWeight.bold)), centerTitle: true,backgroundColor: widget.appbarColor,),
      body: _colorsWidget(),
       backgroundColor:widget.appbarColor==Colors.cyan[600]? Colors.cyan[100]:Colors.pink[100],
    );
  }

  _colorsWidget() {
    
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/colors/orange.png",
                      english: "orange",
                      folder: "colors",
                      turkish: "turuncu"),
                  CardOlustur(
                      imgpath: "assets/images/colors/blue.png",
                      english: "blue",
                      folder: "colors",
                      turkish: "mavi")
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/colors/yellow.png",
                      english: "yellow",
                      folder: "colors",
                      turkish: "sarı"),
                  CardOlustur(
                      imgpath: "assets/images/colors/green.png",
                      english: "green",
                      folder: "colors",
                      turkish: "yeşil")
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/colors/white.png",
                      english: "white",
                      folder: "colors",
                      turkish: "beyaz"),
                  CardOlustur(
                      imgpath: "assets/images/colors/red.png",
                      english: "red",
                      folder: "colors",
                      turkish: "kırmızı")
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/colors/purple.png",
                      english: "purple",
                      folder: "colors",
                      turkish: "mor"),
                  CardOlustur(
                      imgpath: "assets/images/colors/brown.png",
                      english: "brown",
                      folder: "colors",
                      turkish: "kahverengi")
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/colors/black.png",
                      english: "black",
                      folder: "colors",
                      turkish: "siyah"),
                  CardOlustur(
                      imgpath: "assets/images/colors/grey.png",
                      english: "grey",
                      folder: "colors",
                      turkish: "gri")
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/colors/pink.png",
                      english: "pink",
                      folder: "colors",
                      turkish: "pembe"),
                ],
              ),
            ]),
          ),
        );
     
  }
  
}
