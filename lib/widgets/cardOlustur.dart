import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:kidsenglish/services/advert-service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CardOlustur extends StatefulWidget {
  String imgpath, english, turkish, folder;
  CardOlustur({this.imgpath, this.english, this.turkish, this.folder});

  @override
  _CardOlusturState createState() => _CardOlusturState();
}

class _CardOlusturState extends State<CardOlustur> {
  int adCounter;
   final AdvertService _advertService = AdvertService();
  final player = AudioCache();

  @override
  void initState() {
    super.initState();
    //_adCounterStart();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return FlipCard(front: frontCard(screenSize), back: backCard(screenSize));
  }

  frontCard(Size screenSize) {
    return Column(
      children: [
        ClayContainer(
          color: Colors.teal[400],
          borderRadius: 25,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            color: Colors.yellow[100],
            child: Column(
              children: [
                Container(
                  width: screenSize.width / 2.5,
                  height: screenSize.width / 2.5,
                  child: Image.asset(widget.imgpath),
                ),
                SizedBox(height: 4.0),
                Text(
                  widget.english,
                  style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: "blackops"),
                )
              ],
            ),
          ),
        ),
        IconButton(
            icon: Icon(Icons.volume_up,),
            onPressed: () async {
              //final assetsAudioPlayer = AssetsAudioPlayer();

              //assetsAudioPlayer.open(
              //Audio("assets/audios/${english}.mp3"),);
              player.play('${widget.english}.mp3');
              _adCounterStart();
             
            })
      ],
    );
  }

  backCard(Size screenSize) {
    return ClayContainer(
      borderRadius: 25,
      color: Colors.red[400],
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        color: Colors.yellow[200],
        child: Column(
          children: [
            Container(
              width: screenSize.width / 2.5,
              height: screenSize.width / 2.5,
              child: Image.asset(widget.imgpath),
            ),
            SizedBox(height: 4.0),
            Text(
              widget.turkish,
              style: TextStyle(
                  fontSize: 23.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: "blackops"),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _adCounterStart() async {
    final prefs = await SharedPreferences.getInstance();
    int lastStartupNumber = await _getIntFromSharedPref();
    int currentStartupNumber = ++lastStartupNumber;
    await prefs.setInt('startupNumber', currentStartupNumber);
    
    if (currentStartupNumber == 7) {
     _advertService.showInterstitial();

      // Reset only if you want to
      await _resetCounter();
    } else {
      setState(() {
        adCounter = currentStartupNumber;
      });
    }
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

  Future<void> _resetCounter() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('startupNumber', 0);
  }
}
