import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:work_test/post_page.dart';

import '../models/user.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key, required this.user, this.action});
  final User user;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: action != null,
      contentPadding: EdgeInsets.zero,
      leading: SizedBox(
        width: 50,
        child: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(user.profileImage),
        ),
      ),
      title: Row(
        children: [
          Text(user.name),
          const Gap(5),
          Text(
            user.username,
            style: context.theme.textTheme.labelMedium!
                .copyWith(color: Colors.grey),
          ),
          const Gap(5),
          Text(
            '. ${user.time}',
            style: context.theme.textTheme.labelMedium!
                .copyWith(color: Colors.grey),
          ),
        ],
      ),
      subtitle: action,
    );
  }
}