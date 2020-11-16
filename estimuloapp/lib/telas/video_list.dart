import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

/// Creates list of video players
class VideoList extends StatefulWidget {
  String _trilha;

  VideoList(String trilha) {
    this._trilha = trilha;
  }
  @override
  _VideoListState createState() => _VideoListState(_trilha);
}

class _VideoListState extends State<VideoList> {
  List<YoutubePlayerController> _controllers;

  _VideoListState(String trilha) {
    switch (trilha) {
      case 'financeiro':
        _controllers = [
          'e--xnFnwPTU',
          'U2Dkxj2hMAM',
          'FL4oqFqhy4k',
          'zbnm-_8t3fs',
          'SvWmLfMc6Dk',
          'xxgb43JJUCc',
          'SJyX3mD7sxE',
        ]
            .map<YoutubePlayerController>(
              (videoId) => YoutubePlayerController(
                initialVideoId: videoId,
                flags: const YoutubePlayerFlags(
                  autoPlay: false,
                ),
              ),
            )
            .toList();
        break;
      case 'marketing':
        _controllers = [
          'rrd04VXcd_Q',
        ]
            .map<YoutubePlayerController>(
              (videoId) => YoutubePlayerController(
                initialVideoId: videoId,
                flags: const YoutubePlayerFlags(
                  autoPlay: false,
                ),
              ),
            )
            .toList();
        break;
      case 'tecnologia':
        break;
      case 'rh':
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Column(
            children: [
              Text(
                'Aula ${index + 1}:',
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
              YoutubePlayer(
                key: ObjectKey(_controllers[index]),
                controller: _controllers[index],
                actionsPadding: const EdgeInsets.only(left: 16.0),
                bottomActions: [
                  CurrentPosition(),
                  const SizedBox(width: 10.0),
                  ProgressBar(isExpanded: true),
                  const SizedBox(width: 10.0),
                  RemainingDuration(),
                  FullScreenButton(),
                ],
              ),
            ],
          );
        },
        itemCount: _controllers.length,
        separatorBuilder: (context, _) => const SizedBox(height: 10.0),
      ),
    );
  }
}
