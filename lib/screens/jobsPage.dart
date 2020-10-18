import 'package:flutter/material.dart';
import 'package:kidsenglish/services/advert-service.dart';
import 'package:kidsenglish/widgets/cardOlustur.dart';
import 'package:shared_preferences/shared_preferences.dart';

class JobsPage extends StatefulWidget {
  Color appbarColor;
  JobsPage({this.appbarColor});
  @override
  _JobsPageState createState() => _JobsPageState();
}

class _JobsPageState extends State<JobsPage> {
  final AdvertService _advertService = AdvertService();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Text("Meslekler",
              style: TextStyle(
                  fontFamily: "agent",
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: widget.appbarColor),
      body: _jobsWidget(),
       backgroundColor:widget.appbarColor==Colors.cyan[600]? Colors.cyan[100]:Colors.pink[100],
    );
  }

  _jobsWidget() {
   
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/jobs/doctor.png",
                      english: "doctor",
                      folder: "jobs",
                      turkish: "doktor"),
                  CardOlustur(
                      imgpath: "assets/images/jobs/farmer.png",
                      english: "farmer",
                      folder: "jobs",
                      turkish: "çiftçi"),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/jobs/fireman.png",
                      english: "fireman",
                      folder: "jobs",
                      turkish: "itfaiyeci"),
                  CardOlustur(
                      imgpath: "assets/images/jobs/nurse.png",
                      english: "nurse",
                      folder: "jobs",
                      turkish: "hemşire"),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardOlustur(
                      imgpath: "assets/images/jobs/police.png",
                      english: "police",
                      folder: "jobs",
                      turkish: "polis"),
                  CardOlustur(
                      imgpath: "assets/images/jobs/soldier.png",
                      english: "soldier",
                      folder: "jobs",
                      turkish: "asker"),
                ],
              ),
            ]),
          ),
        );
      
    
  }

  
}
