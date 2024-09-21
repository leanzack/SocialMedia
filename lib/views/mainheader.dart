import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/user/User.dart';


class MainHeader extends StatelessWidget {
  const MainHeader({
    super.key,
    required this.user,

  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(
            user.myUserAccount.img,
          ),
          radius: 40,
          
        ),
        Text(
          user.myUserAccount.name,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        Text(
          user.myUserAccount.email,

        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
