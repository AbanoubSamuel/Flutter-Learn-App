import 'package:flutter/material.dart';
import '../models/item_model.dart';

// import 'package:audioplayers/audioplayers.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class PhraseItem extends StatelessWidget {
  const PhraseItem({Key? key, required this.number, required this.color})
      : super(key: key);
  final Item number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(color: const Color(0xffFFF6DC)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          const Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                try {
                  final assetsAudioPlayer = AssetsAudioPlayer();
                  assetsAudioPlayer.open(
                    Audio(number.sound),
                  );
                  assetsAudioPlayer.stop();
                } catch (ex) {
                  print(ex);
                }
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 34,
              ),
            ),
          )
        ],
      ),
    );
  }
}
