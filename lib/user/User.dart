import 'friend.dart';
import 'Comment.dart';
import 'Post.dart';
import 'Account.dart';


class User {
  List<Post> userList = [
    Post(
     userimg: 'image/img.png',
     username: 'super many',
     time: '25 minutes ago',
     postcontent: 'Golden Ring',
     posting: 'image/img_1.png',
     numcomments: '2323 comments',
     numshare: '20 shares',
     isLiked: false,
      com: [],
    ),
    Post(
      userimg: 'image/img_2.png',
      username: 'My sunshine',
      time: '25 minutes ago',
      postcontent: 'Golden Ring',
      posting: 'image/img_3.png',
      numcomments: '2323 comments',
      numshare: '20 shares',
      isLiked: false,
      com: [],
    ),
    Post(
      userimg: 'image/img.png',
      username: 'super many',
      time: '25 minutes ago',
      postcontent: 'Golden Ring',
      posting: 'image/img_1.png',
      numcomments: '2323 comments',
      numshare: '20 shares',
      isLiked: false,
      com: [],
    ),
  ];

  List<friend> friendList = [
    friend(
        img: 'image/pavlova.jpeg',
        name: 'pavlova',
    ), friend(
        img: 'image/photo_male_1.jpg',
        name: 'Photo Male 1',
    ), friend(
        img: 'image/photo_male_2.jpg',
        name: "Photo Male 2",
    ), friend(
      img: 'image/photo_male_3.jpg',
      name: "Photo Male 3",
    ),friend(
      img: 'image/photo_male_4.jpg',
      name: "Photo Male 4",
    ),

  ];
List<friend> friendlist2 = [

friend(
    img: 'image/photo_male_5.jpg',
    name: "photo male 5",
),
  friend(
      img: 'image/photo_male_6.jpg',
      name: 'photo male 6',
  ),
];

List <Comment> CommentList = [
  Comment(
   commenterImg: 'image/photo_male_7.jpg',
   commenterName: 'Mary',
   commentTime: ' 23',
   commentContent: 'Super what?',
  ),
  Comment(
    commenterImg: 'image/photo_male_8.jpg',
    commenterName: 'James',
    commentTime: ' 223',
    commentContent: 'Super yes?',
  ),
  Comment(
    commenterImg: 'image/photo_male_8.jpg ',
    commenterName: 'Laiton pogy',
    commentTime: ' 2',
    commentContent: 'Suppper yes??',
  ),
];

  Account myUserAccount = Account(

    name: 'leyan pupa',
   email: 'leyanpupa@gmail.com',
   img:  'image/img.png',
   numFollowers: '2.4k',
   numPost: '20',
   numFollowing: '1000',
   numFrineds: '0'
  );

}