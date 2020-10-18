import 'package:flutter/material.dart';
import 'package:kidsenglish/services/advert-service.dart';
import 'package:kidsenglish/widgets/cardOlustur.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AnimalsPage extends StatefulWidget {
  Color appbarColor;
  AnimalsPage({this.appbarColor});
  @override
  _AnimalsPageState createState() => _AnimalsPageState();
}

class _AnimalsPageState extends State<AnimalsPage> {
  final AdvertService _advertService = AdvertService();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      
      appBar: AppBar(
        //elevation: 1.0,
        title: Text("Hayvanlar",
            style: TextStyle(
                fontFamily: "agent",
                color: Colors.indigo[900],
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: widget.appbarColor,
      ),
      body: _animalsWidget(),
      backgroundColor:widget.appbarColor==Colors.cyan[600]? Colors.cyan[100]:Colors.pink[100],
    );
  }

  _animalsWidget() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardOlustur(
                  imgpath: "assets/images/animals/cat.png",
                  folder: "animals",
                  english: "cat",
                  turkish: "kedi"),
              CardOlustur(
                  imgpath: "assets/images/animals/dog.png",
                  folder: "animals",
                  english: "dog",
                  turkish: "köpek")
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardOlustur(
                  imgpath: "assets/images/animals/donkey.png",
                  folder: "animals",
                  english: "donkey",
                  turkish: "eşşek"),
              CardOlustur(
                  imgpath: "assets/images/animals/elephant.png",
                  folder: "animals",
                  english: "elephant",
                  turkish: "fil")
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardOlustur(
                  imgpath: "assets/images/animals/lion.png",
                  folder: "animals",
                  english: "lion",
                  turkish: "aslan"),
              CardOlustur(
                  imgpath: "assets/images/animals/monkey.png",
                  folder: "animals",
                  english: "monkey",
                  turkish: "maymun")
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardOlustur(
                  imgpath: "assets/images/animals/penguin.png",
                  english: "penguin",
                  folder: "animals",
                  turkish: "penguen"),
              CardOlustur(
                  imgpath: "assets/images/animals/tiger.png",
                  english: "tiger",
                  folder: "animals",
                  turkish: "kaplan")
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardOlustur(
                  imgpath: "assets/images/animals/owl.png",
                  english: "owl",
                  folder: "animals",
                  turkish: "baykuş"),
              CardOlustur(
                  imgpath: "assets/images/animals/giraffe.png",
                  english: "giraffe",
                  folder: "animals",
                  turkish: "zürafa")
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardOlustur(
                  imgpath: "assets/images/animals/turtle.png",
                  english: "turtle",
                  folder: "animals",
                  turkish: "kaplumbağa"),
              CardOlustur(
                  imgpath: "assets/images/animals/zebra.png",
                  english: "zebra",
                  folder: "animals",
                  turkish: "zebra")
            ],
          ),
        ]),
      ),
    );
  }
}
