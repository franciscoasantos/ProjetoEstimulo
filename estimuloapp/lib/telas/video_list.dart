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
          'R-qvUu9QOFQ',
          'HZ9ZoggHdQ4',
          'a6YxQrCo6Dg',
          '3esg5BXjjPU',
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
       _controllers = [
          '9fNHAD7ZDL4',
          'w57-Xl5jZ2o',
          'LSZCkC0k93s',
          'SCu1ekLecgY',
          '8QuBUY1dW-M',
          '7CmCCDEzKJg',
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
      case 'rh':
       _controllers = [
          'waeKEAbDcUI',
          'h_8m9wlsMn0',
          'IJZsYHEGmVM',
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
