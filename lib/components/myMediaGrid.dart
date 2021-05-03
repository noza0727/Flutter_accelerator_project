import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyMediaGrid extends StatefulWidget {
  @override
  _MyMediaGridState createState() => _MyMediaGridState();
}

class _MyMediaGridState extends State<MyMediaGrid> {

  List<String> mediaList = [
    'assets/Rectangle6.png',
    "assets/Rectangle7.png",
    "assets/Rectangle8.png",
    "assets/Rectangle9.png",
    "assets/Rectangle10.png",
    "assets/Rectangle11.png",
    "assets/Rectangle12.png",
    "assets/Rectangle13.png",
    "assets/Rectangle14.png",
  ];

  @override
  Widget build(BuildContext context) {
    return  Container(
          margin: EdgeInsets.only(left: 16.0, right: 16.0),
          height: 400.0,
          child: GridView.builder(
              itemCount: mediaList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Container(
                      height: 95.0,
                      width: 95.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(mediaList[index]),
                            fit: BoxFit.cover,
                          )
                      ),
                      child: Stack(
                          children: < Widget>[
                            Positioned(
                              width: 25,
                              height: 25,
                              right: 8,
                              top: 8,
                              child: RawMaterialButton(
                                onPressed: () {},
                                fillColor: Colors.white,
                                child: Icon(Icons.cancel_rounded, color: Colors.red[200], size: 25),
                                shape: CircleBorder(),
                              ),
                            ),
                          ]
                      )
                  ),
                );
              }),
        );
  }
}
