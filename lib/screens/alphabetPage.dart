import 'package:flutter/material.dart';
import 'package:kidsenglish/services/advert-service.dart';
import 'package:kidsenglish/widgets/cardOlustur.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AlphabetPage extends StatefulWidget {
  Color appbarColor;
  AlphabetPage({this.appbarColor});
  @override
  _AlphabetPageState createState() => _AlphabetPageState();
}

class _AlphabetPageState extends State<AlphabetPage> {
   final AdvertService _advertService = AdvertService();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Alfabe",style: TextStyle(fontFamily:"agent",color: Colors.indigo[900],fontWeight: FontWeight.bold),), centerTitle: true,
      backgroundColor: widget.appbarColor,),
      body: _alphabetWidget(),
       backgroundColor:widget.appbarColor==Colors.cyan[600]? Colors.cyan[100]:Colors.pink[100],
    );
  }

  _alphabetWidget() {
  
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/alphabet/A.png",
                      english: "a",
                      folder: "alphabet",
                      turkish: "a"),
                  CardOlustur(
                      imgpath: "assets/images/alphabet/B.png",
                     english: "b",
                      folder: "alphabet",
                      turkish: "b"),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/alphabet/C.png",
                      english: "c",
                      folder: "alphabet",
                      turkish: "c"),
                  CardOlustur(
                      imgpath: "assets/images/alphabet/D.png",
                     english: "d",
                      folder: "alphabet",
                      turkish: "d"),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/alphabet/E.png",
                      english: "e",
                      folder: "alphabet",
                      turkish: "e"),
                  CardOlustur(
                      imgpath: "assets/images/alphabet/F.png",
                      english: "f",
                      folder: "alphabet",
                      turkish: "f"),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/alphabet/G.png",
                      english: "g",
                      folder: "alphabet",
                      turkish: "g"),
                  CardOlustur(
                      imgpath: "assets/images/alphabet/H.png",
                      english: "h",
                      folder: "alphabet",
                      turkish: "h"),
                ],
              ),
               SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/alphabet/I.png",
                     english: "i",
                      folder: "alphabet",
                      turkish: "i"),
                  CardOlustur(
                      imgpath: "assets/images/alphabet/J.png",
                      english: "j",
                      folder: "alphabet",
                      turkish: "j"),
                ],
              ),
               SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/alphabet/K.png",
                      english: "k",
                      folder: "alphabet",
                      turkish: "k"),
                  CardOlustur(
                      imgpath: "assets/images/alphabet/L.png",
                      english: "l",
                      folder: "alphabet",
                      turkish: "l"),
                ],
              ),
               SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/alphabet/M.png",
                     english: "m",
                      folder: "alphabet",
                      turkish: "m"),
                  CardOlustur(
                      imgpath: "assets/images/alphabet/N.png",
                     english: "n",
                      folder: "alphabet",
                      turkish: "n"),
                ],
              ),
               SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/alphabet/O.png",
                      english: "o",
                      folder: "alphabet",
                      turkish: "o"),
                  CardOlustur(
                      imgpath: "assets/images/alphabet/P.png",
                      english: "p",
                      folder: "alphabet",
                      turkish: "p"),
                ],
              ),
               SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/alphabet/Q.png",
                      english: "q",
                      folder: "alphabet",
                      turkish: "q"),
                  CardOlustur(
                      imgpath: "assets/images/alphabet/R.png",
                      english: "r",
                      folder: "alphabet",
                      turkish: "r"),
                ],
              ),
               SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/alphabet/S.png",
                      english: "s",
                      folder: "alphabet",
                      turkish: "s"),
                  CardOlustur(
                      imgpath: "assets/images/alphabet/T.png",
                      english: "t",
                      folder: "alphabet",
                      turkish: "t"),
                ],
              ),
               SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/alphabet/U.png",
                      english: "u",
                      folder: "alphabet",
                      turkish: "u"),
                  CardOlustur(
                      imgpath: "assets/images/alphabet/V.png",
                      english: "v",
                      folder: "alphabet",
                      turkish: "v"),
                ],
              ),
               SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/alphabet/W.png",
                      english: "w",
                      folder: "alphabet",
                      turkish: "w"),
                  CardOlustur(
                      imgpath: "assets/images/alphabet/X.png",
                      english: "x",
                      folder: "alphabet",
                      turkish: "x"),
                ],
              ),
               SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/alphabet/Y.png",
                     english: "y",
                      folder: "alphabet",
                      turkish: "y"),
                  CardOlustur(
                      imgpath: "assets/images/alphabet/Z.png",
                     english: "z",
                      folder: "alphabet",
                      turkish: "z"),
                ],
              ),

            ]),
          ),
        );
      
    
  }
  //bu metodlar şimdilik dursun kullanmıyorum şuan
  /*Future<int> _getIntFromSharedPref() async {
    final prefs = await SharedPreferences.getInstance();
    final startupNumber = prefs.getInt('startupNumber');
    if (startupNumber == null) {
      return 0;
    }
    print(startupNumber);
    return startupNumber;
  }

   _getAdCounter() async {
    int adCount = await _getIntFromSharedPref();
    if (adCount == 6) {
      _advertService.showInterstitial();
    }
  }*/
}
