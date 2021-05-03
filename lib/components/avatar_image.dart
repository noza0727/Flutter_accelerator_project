import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvatarImage extends StatefulWidget {

  @override
  _AvatarImageState createState() => _AvatarImageState();
}

class _AvatarImageState extends State<AvatarImage> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/avatar-girl.png'),
          ),
          Positioned(
              width: 43,
              height: 43,
              bottom: -2,
              right: -2,
              child: RawMaterialButton(
                onPressed: () {},
                fillColor: Colors.deepPurpleAccent,
                child: Icon(Icons.add, color: Colors.white),
                padding: EdgeInsets.all(10.0),
                shape: CircleBorder(),
              )),
        ],
      ),
    );
  }
}