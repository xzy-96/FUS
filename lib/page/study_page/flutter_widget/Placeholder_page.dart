import 'dart:async';

import 'package:FUS/config/style.dart';
import 'package:FUS/widget/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';
import 'package:FUS/pubs/screen_util.dart';
class PlaceholderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget('placeholderPage', context),
      body: HomeContent(),
    );
  }
}

class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {

  double _size=20.0;
  @override
  Widget build(BuildContext context) {
   return Container(
     child:ListView(
       children: [
         Container(
           child: Text('占位符',style: TextStyle(
             fontSize: 20
           ),),
         ),
         _defaultPlaceholder(),
         _durLogo()
       ],
     )

   );
  }
  Widget _defaultPlaceholder () =>Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Container(
        child: Text('默认'),
      ),
      Placeholder(),
      Container(
        child: Text('默认有父级'),
      ),
      Container(
        height: 100,
        width:100,
        child: Placeholder(),
      ),
    ],
  );

  Widget _durLogo() => Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      SizedBox(height: 20),
      Placeholder(
        color: Colors.red,
        strokeWidth: 4,
        fallbackWidth: 100,
        fallbackHeight: 100,
      ),
      SizedBox(height: 20),
      Container(
        constraints: BoxConstraints.expand(height: 100, width: 100),
        child: Placeholder(
          color: Colors.deepOrange,
          strokeWidth: 4,
          fallbackWidth: 10,
          fallbackHeight: 100,

        ),
      ),
    ],
  );
}

