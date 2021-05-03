import 'package:accelerator_flutter/objects/Freind.dart';
import 'package:accelerator_flutter/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FriendsList extends StatefulWidget {
  @override
  _FriendsListState createState() => _FriendsListState();
}

class _FriendsListState extends State<FriendsList> {

  List friendsList = [
    Friend(
        name: "Corey George",
        profession: "Developer",
        avatar: "assets/friend1.png"),
    Friend(
        name: "Ahmad Vetrovs",
        profession: "Developer",
        avatar: "assets/friend2.png"),
    Friend(
        name: "Christopher Workman",
        profession: "Developer",
        avatar: "assets/friend3.png"),
    Friend(
        name: "Tiana Korsgaard",
        profession: "Developer",
        avatar: "assets/friend4.png"),
  ];
  @override
  Widget build(BuildContext context) {
    Friend friend;
    return Container(
          height: 350.0,
          child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: friendsList.length,
              separatorBuilder: (BuildContext context, int index) => Divider(indent: 80,),
              itemBuilder: (BuildContext context, int index) {
                friend = friendsList[index];
                return ListTile(
                    title: Text(friend.name, style: AppStyles.listTitleTextStyle),
                    leading: Image.asset(friend.avatar),
                    trailing: Icon(Icons.close),
                    subtitle: Text(friend.profession, style: AppStyles.listSubtitleTextStyle)
                );
              }
          ),
        );
  }
}