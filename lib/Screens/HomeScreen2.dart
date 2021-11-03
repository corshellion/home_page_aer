import 'package:flutter/material.dart';
import 'PlaceholderWidget.dart';
import 'package:flutter_slide/Screens/product/products_screen.dart';
import 'package:flutter_slide/Screens/product_overview.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:async';
class HomeScreen2 extends StatelessWidget {


  final List<String> imageList = [
    "https://aer.co.id/wp-content/uploads/2020/03/simulasi-bathroom.jpg",
    "https://aer.co.id/wp-content/uploads/2019/03/HOME-BANNER-2.jpg",
    "https://aer.co.id/wp-content/uploads/2019/03/SAH-WY-1-1.jpg",
    "https://aer.co.id/wp-content/uploads/2019/03/goldbannernew.jpg",
    "https://aer.co.id/wp-content/uploads/2019/03/lx2bannere.jpg",
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Expanded(
            child: Container(color: Color(0xFFfafafa)),
            flex: 2,
          ),
          Expanded(
            child: Container(color: Colors.transparent),
            flex: 5,
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 20, right: 20, top: 50),
            title: Text(
              'Dashboard',
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              '10 categories',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: CircleAvatar(),
          ),
          Expanded(
            child: Container(
              padding: new EdgeInsets.symmetric(vertical: 150),
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
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    )).toList(),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 50,top:0),
              child: Padding (
                padding: const  EdgeInsets.only(left: 0, right: 240, bottom: 10,top:0),
                child : Align(
                  child: Text(
                    'Product Category',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ),
          ),
          Expanded(
            child: NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (overscroll){
                overscroll.disallowGlow();
              },
              child: Container(
                height: 650,
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 0,top:400),
                child: GridView.count(
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  crossAxisCount: 4,
                  childAspectRatio: .90,
                  children: List.generate(8, (_) {
                    return Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: new InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductsScreen()
                              )
                          );
                        },
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[FlutterLogo(), Text('data')],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
          Expanded(
          child: NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (overscroll){
                  overscroll.disallowGlow();
              },
              child: Container (
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 0,top:670),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 16, right: 16, bottom: 5,top:0),
                        child: Text(
                          'Our Special Products',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 200.0,
                        child: ListView.builder(
                          physics: ClampingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) => Card(
                            child: new InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProductOverview()
                                    )
                                );
                              },
                              child: Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[FlutterLogo(), Text('Loren Ipsum Del Amet')],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}