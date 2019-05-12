// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';


/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
// TODO: Make CategoryRoute a StatefulWidget
// class _CategoryRouteState extends State<CategoryRoute> {  //underscore = private class   stores the widgets state
//   var color = Colors.purple;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text('hi'),
//     );
//   }
// }

class HomePage extends StatelessWidget {
  Widget createText() {
    return Text(
      "Karl",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
    );
  }

  Widget createList() {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          createCard(),
          createText(),
          createCard()
        ],
      ),
    );
  }

  Widget createCard() {
    return SizedBox(
        width: 150,
        height: 150,
        child: Card(
          elevation: 40,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[Text("YEET"), Text("YEETIMUS")],
              ),
              Text("POPULATION ME")
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        AnimatedContainer(
            width: 100,
            height: 100,
            color: Color.fromARGB(0, 150, 150, 150),
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            margin: EdgeInsets.only(left: 15, top: 115)),
        createText(),
        createList()
      ],
    ));
  }
}
