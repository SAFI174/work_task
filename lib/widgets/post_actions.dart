import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../constants.dart';
import 'action.dart';

class PostActions extends StatelessWidget {
  const PostActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ActionWidget(icon: SvgPicture.asset(commentIcon), text: '324'),
        ActionWidget(icon: SvgPicture.asset(heart), text: '324'),
        ActionWidget(icon: SvgPicture.asset(show), text: '324'),
        ActionWidget(icon: Image.network(chatIcon), text: 'AI Chat'),
        ActionWidget(icon: SvgPicture.asset(download)),
      ],
    );
  }
}

