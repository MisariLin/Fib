

import 'package:flutter/material.dart';
import 'package:Fib/playground.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Container(
            width: 100,
            color: Colors.blue,
          ),
          Expanded(child: buildPlayground()),
          Container(
            color: Colors.red,
            width: 100,
          ),
        ],
      ),
    );
  }

  Widget buildPlayground(){
    return Stack(
      children: [
        Positioned(
          width: 375,
          height: 667,
          top: 100,
          left: 300,
          child: Playground())
      ],
    );
  }
}