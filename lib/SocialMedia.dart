import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/user/User.dart';
import 'package:untitled/views/friendList.dart';
import 'package:untitled/views/infoHeader.dart';
import 'package:untitled/views/mainheader.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({super.key});

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {

  User user = User();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
        MainHeader(user: user),
          infoHeader(user: user),
          friendList(user: user)
        ],
      ),
    );
  }
}
