import 'package:accelerator_flutter/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/components.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

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
              color: AppColors.black,
            ),
          ),
          backgroundColor: AppColors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_outlined),
            color: AppColors.black,
            iconSize: 30.0,
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.more_vert),
                color: AppColors.black,
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
                        AvatarImage(),
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
                          color: AppColors.grey,
                          height: 48.0,
                          indent: 18.0,
                          endIndent: 18.0,
                        ),
                        //-------------Select Type------------
                        InstructionText(text: "Select Type"),
                        TypeChoiceChips(),
                        Divider(
                          color: AppColors.grey,
                          height: 48.0,
                          indent: 18.0,
                          endIndent: 18.0,
                        ),
                        InstructionText(text: "Friends"),
                      ]),
                ),

                //----------Friends----------
                SliverToBoxAdapter(child: FriendsList()),
                SliverToBoxAdapter(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              child: Row(
                                children: [
                                  Text("ADD FRIEND",
                                      style: TextStyle(
                                          fontSize: 16.0, color: AppColors.black)),
                                  Icon(Icons.add, color: AppColors.black),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                  color: AppColors.grey,
                                  width: 0.5,
                                ),
                                minimumSize: Size(350.0, 40.0),
                                onSurface: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: AppColors.grey,
                          height: 48.0,
                          indent: 18.0,
                          endIndent: 18.0,
                        ),

                        InstructionText(text: "My Media"),
                      ],
                    )),

                //--------My Media------
                SliverToBoxAdapter(child: MyMediaGrid()),
                SliverToBoxAdapter(
                  child: Container(
                    padding: EdgeInsets.only(bottom: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          child: Text(
                            "DELETE",
                            style: TextStyle(color: AppColors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.deepPurlple,
                            minimumSize: Size(180.0, 35.0),
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(width: 16.0),
                        ElevatedButton(
                          child: Text(
                            "ADD",
                            style: TextStyle(color: AppColors.deepPurlple),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              minimumSize: Size(180.0, 35.0),
                              primary: AppColors.white,
                              side: BorderSide(
                                  color: AppColors.grey,
                                  width: 1.0)
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
