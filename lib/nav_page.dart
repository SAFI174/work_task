
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:svg_flutter/svg.dart';
import 'package:work_test/constants.dart';
import 'post_page.dart';
class NavPage extends StatelessWidget {
  const NavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: PostDetailPage(), bottomNavigationBar: DummyNav());
  }
}

class DummyNav extends StatelessWidget {
  const DummyNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      decoration: const BoxDecoration(
          color: Colors.black,
          boxShadow: [BoxShadow(color: Colors.white, spreadRadius: 0.1)]),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              SvgPicture.asset(home),
              const Gap(5),
              const Text('Home'),
            ],
          ),
          Column(
            children: [
              SvgPicture.asset(group),
              const Gap(5),
              const Text('Groups'),
            ],
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Material(
              borderRadius: BorderRadius.circular(50),
              color: context.theme.colorScheme.surfaceVariant,
              child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SvgPicture.asset(appMenuIcon)),
            ),
          ),
          Column(
            children: [
              SvgPicture.asset(dmIcon),
              const Gap(5),
              const Text('Messages'),
            ],
          ),
          Column(
            children: [
              SvgPicture.asset(user),
              const Gap(5),
              const Text('Profile'),
            ],
          )
        ],
      ),
    );
  }
}
