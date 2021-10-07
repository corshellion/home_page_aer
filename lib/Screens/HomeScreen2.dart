import 'package:flutter/material.dart';
import 'PlaceholderWidget.dart';
import 'package:flutter_slide/Screens/demo_view.dart';
import 'dart:async';
class HomeScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Expanded(
            child: Container(color: Colors.deepPurple),
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
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              '10 items',
              style: TextStyle(color: Colors.blue),
            ),
            trailing: CircleAvatar(),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 16,top:120),
              child: GridView.count(
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                crossAxisCount: 2,
                childAspectRatio: .90,
                children: List.generate(6, (_) {
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
                            builder: (context) => DemoView()
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
          )
        ],
      ),
    );
  }

}