import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/user/User.dart';
class infoHeader extends StatelessWidget {
   infoHeader({
    super.key,
    required this.user,
  });
  final User user;

  var followTxtStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Followers"),
            Text("Posts"),
            Text("Following"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
            user.myUserAccount.numFollowers,
            style: followTxtStyle,
            ),
            Text(
              user.myUserAccount.numPost,
              style: followTxtStyle,
            ),
            Text(
              user.myUserAccount.numFollowing,
              style: followTxtStyle,
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
         Divider(
           color: Colors.grey,
         ),
      ],
    );
  }
}
