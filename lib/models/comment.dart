import 'user.dart';

class Comment {
  final User user;
  final String replyTo;
  final String text;
  final int comments;
  final int likes;
  final String timeAgo;

  Comment({
    required this.user,
    required this.replyTo,
    required this.text,
    required this.comments,
    required this.likes,
    required this.timeAgo,
  });
}