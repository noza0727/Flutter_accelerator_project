import 'package:accelerator_flutter/objects/Freind.dart';
import 'package:accelerator_flutter/statelessWidgets.dart';
import 'package:accelerator_flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            'Profile',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_outlined),
            color: Colors.black,
            iconSize: 30.0,
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.more_vert),
                color: Colors.black,
                iconSize: 30.0,
                onPressed: () {})
          ],
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 24.0,
                    ),
                    CircleAvatar(
                      radius: 50.0,
                      //backgroundImage: AssetImage('assets/avatar-girl.png'),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.asset('assets/avatar-girl.png'),
                      ),
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Text(
                      "Tiana Rosser",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      "Developer",
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 48.0,
                      indent: 18.0,
                      endIndent: 18.0,
                    ),

                    //-------------Select Type------------

                    InstructionText(text: "Select Type"),
                    TypeChoiceChips(),
                    Divider(
                      color: Colors.grey,
                      height: 48.0,
                      indent: 18.0,
                      endIndent: 18.0,
                    ),

                    InstructionText(text: "Friends"),
                  ]),
            ),

            //----------Friends----------

            SliverList(
                  delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return _buildFriendCards(friendsList[index]);
                },
                childCount: friendsList.length,
                  )),

            SliverToBoxAdapter(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          child: Row(
                            children: [
                              Text("ADD FRIEND", style: TextStyle(fontSize: 16.0, color: Colors.black)),
                              Icon(Icons.add, color: Colors.black),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(
                              color: Colors.grey,
                              width: 0.5,
                            ),
                            minimumSize: Size(350.0, 40.0),
                            onSurface: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 48.0,
                      indent: 18.0,
                      endIndent: 18.0,
                    ),
                  ],
                )
            ),

            //--------My Media------

            SliverGrid(
                delegate: SliverChildBuilderDelegate(
                    (context, index){
                      return Container(
                        height: 95,
                        margin: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                        //  borderRadius: ,
                        )
                      );
                    }, childCount: 9,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,

                ))
          ],
        ));
  }
}

Card _buildFriendCards(Friend friend) {
  return Card(
    margin: EdgeInsets.all(0.0),
    elevation: 0.0,
    shadowColor: null,
    child: Container(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 24.0, 16.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 20.0,
            child: Image.asset(friend.avatar),
          ),
          Expanded(
            flex: 1,
            child: Container(
                margin: EdgeInsets.fromLTRB(16.0, 5.0, 10.0, 5.0),
                child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                friend.name,
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                friend.profession,
                                style: TextStyle(
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                    ),
              ),
          ),
          Icon(Icons.close),
        ],
      ),
    ),
  );

}
