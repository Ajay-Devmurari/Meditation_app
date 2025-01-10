import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:just_audio/just_audio.dart';
import 'package:meditaion_app/screens/maditate_screen.dart';
import 'package:meditaion_app/screens/selection_screen.dart';
import 'package:page_transition/page_transition.dart';

class MusciScreen extends StatefulWidget {
  const MusciScreen({super.key});

  @override
  State<MusciScreen> createState() => _MusciScreenState();
}

class _MusciScreenState extends State<MusciScreen> {
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _audioPlayer.setAsset('assets/jalwa.mp3');
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  void _skipForward() async {
    _audioPlayer
        .seek(await _audioPlayer.position + const Duration(seconds: 10));
  }

  void _skipBackward() async {
    final currentPosition = await _audioPlayer.position;
    _audioPlayer.seek(
      currentPosition - const Duration(seconds: 10) < Duration.zero
          ? Duration.zero
          : currentPosition - const Duration(seconds: 10),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          child: SvgPicture.asset(
            'assets/music_bg4.svg',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buildIcon(
                Colors.white,
                Icons.arrow_back_rounded,
                Colors.black,
                () => Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: MaditateScreen())),
              ),
              Spacer(),
              buildIcon(
                  Color.fromARGB(255, 196, 197, 202),
                  Icons.favorite_border_outlined,
                  Colors.white,
                  () => SelectionScreen()),
              SizedBox(
                width: 20,
              ),
              buildIcon(Color.fromARGB(255, 196, 197, 202), Icons.download,
                  Colors.white, () => SelectionScreen()),
            ],
          ),
        ),
        Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Focus Attention',
              style: TextStyle(
                  fontSize: 34,
                  color: Color.fromARGB(255, 63, 65, 78),
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Calm Radiance',
              style: TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(255, 160, 163, 177),
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 40,
            ),
            StreamBuilder<Duration>(
              stream: _audioPlayer.positionStream,
              builder: (context, snapshot) {
                final position = snapshot.data ?? Duration.zero;
                final total = _audioPlayer.duration ?? Duration.zero;
                return Column(
                  children: [
                    Slider(
                      value: position.inSeconds.toDouble(),
                      max: total.inSeconds.toDouble(),
                      onChanged: (value) {
                        _audioPlayer.seek(Duration(seconds: value.toInt()));
                      },
                    ),
                    Text(
                      "${position.toString().split('.').first} / ${position.toString().split('.').first}",
                    ),
                  ],
                );
              },
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    icon: Icon(Icons.replay_10),
                    iconSize: 40,
                    onPressed: _skipBackward),
                IconButton(
                  icon: StreamBuilder<PlayerState>(
                    stream: _audioPlayer.playerStateStream,
                    builder: (context, snapshot) {
                      final isPlaying = snapshot.data?.playing ?? false;
                      return Icon(isPlaying ? Icons.pause : Icons.play_arrow);
                    },
                  ),
                  iconSize: 60,
                  onPressed: () {
                    if (_audioPlayer.playing) {
                      _audioPlayer.pause();
                    } else {
                      _audioPlayer.play();
                    }
                  },
                ),
                IconButton(
                    icon: Icon(Icons.forward_10),
                    iconSize: 40,
                    onPressed: _skipForward),
              ],
            ),
          ],
        )),
      ],
    ));
  }

  Widget buildIcon(
      Color bgColor, IconData icon, Color? iconColor, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 22,
        backgroundColor: bgColor,
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
