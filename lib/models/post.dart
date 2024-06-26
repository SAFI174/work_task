import 'comment.dart';
import 'user.dart';

class Post {
  final User user;
  final String title;
  final String author;
  final String duration;
  final int comments;
  final int likes;
  final int views;
  final List<Comment> commentsList;

  Post({
    required this.user,
    required this.title,
    required this.author,
    required this.duration,
    required this.comments,
    required this.likes,
    required this.views,
    required this.commentsList,
  });
}
