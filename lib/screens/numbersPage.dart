import 'package:flutter/material.dart';
import 'package:kidsenglish/services/advert-service.dart';
import 'package:kidsenglish/widgets/cardOlustur.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NumbersPage extends StatefulWidget {
  Color appbarColor;
  NumbersPage({this.appbarColor});
  @override
  _NumbersPageState createState() => _NumbersPageState();
}

class _NumbersPageState extends State<NumbersPage> {
   final AdvertService _advertService = AdvertService();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Sayılar",style: TextStyle(fontFamily:"agent",color: Colors.indigo[900],fontWeight: FontWeight.bold)), centerTitle: true,backgroundColor: widget.appbarColor,),
      body: _numbersWidget(),
       backgroundColor:widget.appbarColor==Colors.cyan[600]? Colors.cyan[100]:Colors.pink[100],
    );
  }

  _numbersWidget() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardOlustur(
                  imgpath: "assets/images/numbers/0.png",
                  english: "zero",
                  folder: "numbers",
                  turkish: "sıfır"),
              CardOlustur(
                  imgpath: "assets/images/numbers/1.png",
                  english: "one",
                  folder: "numbers",
                  turkish: "bir")
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardOlustur(
                  imgpath: "assets/images/numbers/2.png",
                  english: "two",
                  folder: "numbers",
                  turkish: "iki"),
              CardOlustur(
                  imgpath: "assets/images/numbers/3.png",
                  english: "three",
                  folder: "numbers",
                  turkish: "üç")
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardOlustur(
                  imgpath: "assets/images/numbers/4.png",
                  english: "four",
                  folder: "numbers",
                  turkish: "dört"),
              CardOlustur(
                  imgpath: "assets/images/numbers/5.png",
                  english: "five",
                  folder: "numbers",
                  turkish: "beş")
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardOlustur(
                  imgpath: "assets/images/numbers/6.png",
                  english: "six",
                  folder: "numbers",
                  turkish: "altı"),
              CardOlustur(
                  imgpath: "assets/images/numbers/7.png",
                  english: "seven",
                  folder: "numbers",
                  turkish: "yedi")
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardOlustur(
                  imgpath: "assets/images/numbers/8.png",
                  english: "eight",
                  folder: "numbers",
                  turkish: "sekiz"),
              CardOlustur(
                  imgpath: "assets/images/numbers/9.png",
                  english: "nine",
                  folder: "numbers",
                  turkish: "dokuz")
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardOlustur(
                  imgpath: "assets/images/numbers/10.png",
                  english: "ten",
                  folder: "numbers",
                  turkish: "on"),
            ],
          ),
        ]),
      ),
    );
  }
  Future<int> _getIntFromSharedPref() async {
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
  }
}
