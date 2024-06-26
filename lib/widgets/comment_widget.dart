import 'package:flutter/material.dart';
import 'package:flutter_parsed_text/flutter_parsed_text.dart';
import 'package:gap/gap.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../constants.dart';
import '../models/comment.dart';
import 'action.dart';

class CommentWidget extends StatelessWidget {
  final Comment comment;

  const CommentWidget({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(comment.user.profileImage),
                  radius: 20,
                ),
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey,
                    ),
                    width: 2,
                    margin: const EdgeInsets.only(top: 8),
                  ),
                ),
              ],
            ),
            const Gap(8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        comment.user.name,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      const Gap(4),
                      Text(
                        '${comment.user.username} . ${comment.user.time}',
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  ParsedText(
                    text: 'Replying to ${comment.replyTo}',
                    parse: <MatchText>[
                      MatchText(
                        pattern: r'@[a-zA-Z0-9_]+',
                        style: const TextStyle(color: Colors.blue),
                      ),
                    ],
                    onTap: (value) => {print(value)},
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const Gap(8),
                  ParsedText(
                    text: comment.text,
                    parse: <MatchText>[
                      MatchText(
                        pattern: r'#[a-zA-Z0-9_]+',
                        style: const TextStyle(color: Colors.blue),
                      ),
                    ],
                    onTap: (value) => {print(value)},
                    style: const TextStyle(color: Colors.white),
                  ),
                  const Gap(8),
                  Row(
                    children: [
                      ActionWidget(
                        icon: SvgPicture.asset(commentIcon),
                        text: '324',
                      ),
                      const Gap(10),
                      ActionWidget(
                        icon: SvgPicture.asset(heart),
                        text: '324',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
