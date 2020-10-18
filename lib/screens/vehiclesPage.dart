import 'package:flutter/material.dart';
import 'package:kidsenglish/services/advert-service.dart';
import 'package:kidsenglish/widgets/cardOlustur.dart';
import 'package:shared_preferences/shared_preferences.dart';

class VehiclesPage extends StatefulWidget {
  Color appbarColor;
  VehiclesPage({this.appbarColor});
  @override
  _VehiclesPageState createState() => _VehiclesPageState();
}

class _VehiclesPageState extends State<VehiclesPage> {
  final AdvertService _advertService = AdvertService();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Araçlar",
            style: TextStyle(
                fontFamily: "agent",
                color: Colors.indigo[900],
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: widget.appbarColor,
      ),
      body: _vehiclesWidget(),
       backgroundColor:widget.appbarColor==Colors.cyan[600]? Colors.cyan[100]:Colors.pink[100],
    );
  }

  _vehiclesWidget() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardOlustur(
                  imgpath: "assets/images/vehicles/bike.png",
                  english: "bike",
                  folder: "vehicles",
                  turkish: "bisiklet"),
              CardOlustur(
                  imgpath: "assets/images/vehicles/car.png",
                  english: "car",
                  folder: "vehicles",
                  turkish: "araba"),
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardOlustur(
                  imgpath: "assets/images/vehicles/helicopter.png",
                  english: "helicopter",
                  folder: "vehicles",
                  turkish: "helikopter"),
              CardOlustur(
                  imgpath: "assets/images/vehicles/motorcycle.png",
                  english: "motorcycle",
                  folder: "vehicles",
                  turkish: "motorsiklet"),
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardOlustur(
                  imgpath: "assets/images/vehicles/plane.png",
                  english: "plane",
                  folder: "vehicles",
                  turkish: "uçak"),
              CardOlustur(
                  imgpath: "assets/images/vehicles/bus.png",
                  english: "bus",
                  folder: "vehicles",
                  turkish: "otobüs"),
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardOlustur(
                  imgpath: "assets/images/vehicles/ship.png",
                  english: "ship",
                  folder: "vehicles",
                  turkish: "gemi"),
              CardOlustur(
                  imgpath: "assets/images/vehicles/truck.png",
                  english: "truck",
                  folder: "vehicles",
                  turkish: "kamyon"),
            ],
          ),
        ]),
      ),
    );
  }
}
