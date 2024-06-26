// fake_data.dart

import 'package:work_test/constants.dart';
import 'package:work_test/models/comment.dart';

import '../models/post.dart';
import '../models/user.dart';

final User user1 = User(
  name: 'Joshuna Lawernce',
  username: '@joshuna',
  profileImage: profileImage1, // Replace with actual image URL
  time: '8h',
);

final User user2 = User(
  name: 'kiero_d',
  username: '@kiero_d',
  profileImage: profileImage2,
  time: '2d',
);
final User user3 = User(
  name: 'karennne',
  username: '@karenne',
  profileImage: profileImage3,
  time: '2d',
);

final Post post = Post(
  user: user1,
  title: 'Lecture about AI Technology',
  author: 'By : Muhammed',
  duration: '00:15',
  comments: 2,
  likes: 324,
  views: 324,
  commentsList: [
    Comment(
      user: user2,
      replyTo: '@ahsen95',
      text:
          'Interesting Nicola that not one reply or tag on this #UX talent shout out in the 24hrs since your tweet here......🤔',
      comments: 324,
      likes: 324,
      timeAgo: '2d',
    ),
    Comment(
      user: user3,
      replyTo: '@ahsen95',
      text:
          'Maybe I forgot the hashtags.\n#hiringux #designjobs #sydneyux #sydneydesigners #uxjobs',
      comments: 324,
      likes: 324,
      timeAgo: '2d',
    ),
  ],
);
