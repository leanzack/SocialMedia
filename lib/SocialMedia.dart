import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/user/User.dart';
import 'package:untitled/views/friendList.dart';
import 'package:untitled/views/infoHeader.dart';
import 'package:untitled/views/mainheader.dart';
import 'package:untitled/views/postList.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({super.key});

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {

  User user = User();

  var followtxtStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
        MainHeader(user: user),
          infoHeader(user: user),
          friendList(user: user),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Text('Posts', style: followtxtStyle),
              ],
            ),
          ),
          SizedBox(
            height: 20
          ),
          PostList(user: user),
        ],
      ),
    );
  }
}
