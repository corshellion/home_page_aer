import 'package:async/async.dart';
import 'package:flutter/material.dart';

class ProductOverview extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Overview();
  }
}

class _Overview extends State<ProductOverview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children : <Widget> [
          Expanded(
            child: Container(color: Color(0xFF5fbdc9)),
            flex: 2,
          ),
        ],

      ),

    );
  }
}