import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ActionWidget extends StatelessWidget {
  const ActionWidget({super.key, required this.icon, this.text});
  final String? text;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(height: 24, child: icon),
        const Gap(10),
        Text(text != null ? text.toString() : ''),
      ],
    );
  }
}