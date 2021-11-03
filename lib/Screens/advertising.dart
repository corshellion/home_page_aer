import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
void main() => runApp(MaterialApp(
  home: HomePage(),
  debugShowCheckedModeBanner: false,
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imageList = [
    "https://aer.co.id/wp-content/uploads/2020/03/simulasi-bathroom.jpg",
    "https://aer.co.id/wp-content/uploads/2019/03/HOME-BANNER-2.jpg",
    "https://aer.co.id/wp-content/uploads/2019/03/SAH-WY-1-1.jpg",
    "https://aer.co.id/wp-content/uploads/2019/03/goldbannernew.jpg",
    "https://aer.co.id/wp-content/uploads/2019/03/lx2bannere.jpg",
  ];


  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return Scaffold(
            body: Container(

              margin: new EdgeInsets.symmetric(vertical: 6.h),
              child: CarouselSlider(
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  autoPlay: true,
                ),
                items: imageList.map((e) =>
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Image.network(e,
                            width: 1050,
                            height: 350,
                            fit: BoxFit.cover,)
                        ],
                      ),
                    )).toList(),
              ),
            ),
          );
        }
    );

  }
}




