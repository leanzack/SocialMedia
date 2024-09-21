class Post {
  final String userimg;
  final String username;
  final String time;
  final String postcontent;
  final String posting;
  final String numcomments;
  final String numshare;
  bool isLiked;

  Post({
    required this.userimg,
    required this.username,
    required this.time,
    required this.postcontent,
    required this.posting,
    required this.numcomments,
    required this.numshare,
    required this.isLiked
  });
}