import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/user/friend.dart';
import '../user/User.dart';

class friendList extends StatelessWidget {
   friendList({
     super.key,
     required this.user,
   });
   final User user;

   var followTxtStyle = TextStyle(
     fontSize: 10,
     fontWeight: FontWeight.bold,
   );


   Widget friends(friend friends) => Card(
     child: Column(
       children: [
         Expanded(
             child: Image.asset(
                 friends.img
             ),
         ),
         Padding(
             padding: EdgeInsets.all(8.0),
           child: Text(friends.name),
         ),
       ],
     ),
   );

   Widget friendListGrid()  => GridView.builder(
       shrinkWrap: true,
     physics: BouncingScrollPhysics(),
     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
       crossAxisCount: 3,
       mainAxisExtent: 180,
     ),
     itemCount: user.friendList.length,
     itemBuilder: (BuildContext ctx, index) {
         return friends(user.friendList[index]);
},
   );

@override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Padding(
            padding: EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              Text(
                'Friends',
                style: followTxtStyle,
              )
            ],
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              Text('${user.myUserAccount.numFrineds} Friends'),
            ],
          ),
        ),
        SizedBox(
          height: 10),
        SizedBox(
          height: 380,
          child: friendListGrid(),
        ),
        SizedBox(
          height: 10,
          child: Container(
            color: Colors.grey,
          ),
        )
      ],

    );

  }
}
