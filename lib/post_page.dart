import 'dart:math';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:work_test/data/fake_data.dart';
import 'widgets/comment_widget.dart';
import 'widgets/post_actions.dart';
import 'widgets/profile_widget.dart';

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
}

class PostDetailPage extends StatelessWidget {
  const PostDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        centerTitle: true,
        title: const Text('Post'),
        actions: [
          TextButton.icon(
            onPressed: () {},
            label: const Text('Invite'),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Post user info and post info
            ProfileWidget(
              user: user1,
            ),
            const Gap(15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(post.title),
                Text(post.author),
              ],
            ),

            const Gap(15),

            /// Audio widget
            ///
            const PostAudioWidget(),
            const Gap(15),

            // Post action buttons
            const PostActions(),

            /// Comments section of current post
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(25),
                shrinkWrap: true,
                children: [
                  CommentWidget(comment: post.commentsList[0]),
                  CommentWidget(comment: post.commentsList[1]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PostAudioWidget extends StatelessWidget {
  const PostAudioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var voiceData = List.generate(50, (index) => Random().nextDouble());
    return Center(
      child: Material(
        borderRadius: BorderRadius.circular(80),
        color: context.theme.colorScheme.surfaceContainerHighest,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Row(
            children: [
              Ink(
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  color: Colors.black,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_arrow_rounded,
                    size: 40,
                  ),
                ),
              ),
              const Gap(10),
              Text(
                '00:15',
                style: context.theme.textTheme.labelLarge,
              ),
              const Gap(10),
              Expanded(
                child: AudioFileWaveforms(
                  size: const Size.fromHeight(60),
                  playerController: PlayerController(),
                  waveformData: voiceData,
                  waveformType: WaveformType.fitWidth,
                  enableSeekGesture: true,
                  continuousWaveform: false,
                  playerWaveStyle: const PlayerWaveStyle(
                    spacing: 5.0,
                    showSeekLine: false,
                    waveThickness: 2.5,
                    scaleFactor: 15,
                    showBottom: true,
                  ),
                ),
              ),
              const Gap(15),
              Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    'x1.5',
                    style: context.theme.textTheme.labelLarge!
                        .copyWith(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
