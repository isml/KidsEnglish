import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kidsenglish/screens/alphabetPage.dart';
import 'package:kidsenglish/screens/animalsPage.dart';
import 'package:kidsenglish/screens/clothesPage.dart';
import 'package:kidsenglish/screens/colorsPage.dart';
import 'package:kidsenglish/screens/foodsPage.dart';
import 'package:kidsenglish/screens/fruitsPage.dart';
import 'package:kidsenglish/screens/jobsPage.dart';
import 'package:kidsenglish/screens/numbersPage.dart';
import 'package:kidsenglish/screens/vehiclesPage.dart';
import 'package:kidsenglish/services/advert-service.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

final AdvertService _advertService = AdvertService();

  String colorsPath = "assets/images/colors/orange.png";
  String animalsPath = "assets/images/animals/cat.png";
  String numbersPath = "assets/images/numbers/1.png";
  String fruitsPath = "assets/images/fruits/pineapple.png";
  String foodsPath = "assets/images/foods/hotdog.png";
  String clothesPath = "assets/images/clothes/coat.png";
  String alphabetPath = "assets/images/alphabet/C.png";
  String jobsPath = "assets/images/jobs/doctor.png";
  String vehiclesPath = "assets/images/vehicles/bike.png";

  MaterialPageRoute<dynamic> colorP =
      MaterialPageRoute(builder: (context) => ColorsPage());
  MaterialPageRoute<dynamic> animalP =
      MaterialPageRoute(builder: (context) => AnimalsPage());
  MaterialPageRoute<dynamic> numberP =
      MaterialPageRoute(builder: (context) => NumbersPage());
  MaterialPageRoute<dynamic> fruitP =
      MaterialPageRoute(builder: (context) => FruitPage());
  MaterialPageRoute<dynamic> foodP =
      MaterialPageRoute(builder: (context) => FoodsPage());
  MaterialPageRoute<dynamic> clothesP =
      MaterialPageRoute(builder: (context) => ClothesPage());
  MaterialPageRoute<dynamic> alphabetP =
      MaterialPageRoute(builder: (context) => AlphabetPage());
  MaterialPageRoute<dynamic> jobP =
      MaterialPageRoute(builder: (context) => JobsPage());
  MaterialPageRoute<dynamic> vehicleP =
      MaterialPageRoute(builder: (context) => VehiclesPage());

  String colorC = "Renkler";
  String animalC = "Hayvanlar";
  String numberC = "Sayılar";
  String fruitC = "Meyveler";
  String foodC = "Yemekler";
  String clothesC = "Giysiler";
  String alphabetC = "Alfabe";
  String jobC = "Meslekler";
  String vehicleC = "Araçlar";

  Color appbarColor = Colors.cyan[600];
  Color appbarColor2 = Colors.pink[300];
  @override
  void initState() {
    // TODO: implement initState
    //_advertService.showBanner();
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(
          actions: [
            IconButton(
                icon: Icon(Icons.color_lens,color: appbarColor == Colors.cyan[600]?Colors.pink[300]:Colors.cyan[600],),
                onPressed: () {
                  setState(() {
                    if (appbarColor == Colors.cyan[600]) {
                      appbarColor = appbarColor2;
                    } else {
                      appbarColor = Colors.cyan[600];
                    }
                  });
                })
          ],
          backgroundColor: appbarColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "K",
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900],
                  fontFamily: "agent",
                ),
              ),
               Text(
                "ids ",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900],
                  
                  fontFamily: "agent",
                ),
              ),
              Text(
                "E",
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900],
                  fontFamily: "agent",
                ),
              ),
               Text(
                "nglish",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900],
                  fontFamily: "agent",
                ),
              ),
            ],
          ),
          centerTitle: true),
          
      body: _homePagewidget(screenSize),
      
    );
  }

  _homePagewidget(Size screenSize) {
    return  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  circleButton(screenSize, colorsPath, colorP, colorC),
                  circleButton(screenSize, animalsPath, animalP, animalC)
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  circleButton(screenSize, numbersPath, numberP, numberC),
                  circleButton(screenSize, fruitsPath, fruitP, fruitC)
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  circleButton(screenSize, foodsPath, foodP, foodC),
                  circleButton(screenSize, clothesPath, clothesP, clothesC)
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  circleButton(screenSize, alphabetPath, alphabetP, alphabetC),
                  circleButton(screenSize, jobsPath, jobP, jobC)
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  circleButton(screenSize, vehiclesPath, vehicleP, vehicleC),
                ],
              ),
            ],
          ),
        ),
      );
    
  }

  circleButton(Size screenSize, String path,
      MaterialPageRoute<dynamic> pageName, String category) {
    return Column(
      children: [
        ClayContainer(
          color: Colors.blueGrey[400],
          //parentColor: Colors.blueGrey,
          child: Material(
            child: InkWell(
              onTap: () async {
                //print("colors");
                //await  Navigator.push(context, pageName);
                switch (category) {
                  case "Renkler":
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ColorsPage(appbarColor: appbarColor)));
                    break;
                  case "Hayvanlar":
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                AnimalsPage(appbarColor: appbarColor)));
                    break;
                  case "Sayılar":
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                NumbersPage(appbarColor: appbarColor)));
                    break;
                  case "Meyveler":
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                FruitPage(appbarColor: appbarColor)));
                    break;
                  case "Yemekler":
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                FoodsPage(appbarColor: appbarColor)));
                    break;
                  case "Giysiler":
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ClothesPage(appbarColor: appbarColor)));
                    break;
                  case "Alfabe":
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                AlphabetPage(appbarColor: appbarColor)));
                    break;
                  case "Meslekler":
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                JobsPage(appbarColor: appbarColor)));
                    break;
                  case "Araçlar":
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                VehiclesPage(appbarColor: appbarColor)));
                    break;

                  default:
                }
              },
              child: Column(
                children: [
                  Container(
                    width: screenSize.width / 2.3,
                    height: screenSize.width / 2.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.green[100], Colors.pink[100]]),

                      //color: Colors.indigo[50],
                      //shape: BoxShape.circle,

                      border: Border.all(color: Colors.teal[300], width: 4.0),
                    ),
                    child: Image.asset(
                      path,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Text(
          category,
          style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.w500,fontFamily: "blackops"),
        )
      ],
    );
  }
}
// color,animals,numbers,fruits,foods,clothes,vehicles,alphabet,jobs
