import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

//https://medium.com/@pongpiraupra/a-comprehensive-guide-to-playing-local-mp3-files-with-seek-functionality-in-flutter-7730a453bb1a

// class Songs extends StatefulWidget {
//   _SongsState createState() => _SongsState();
// }


// class _SongsState extends State<Songs> {

class Songs extends StatelessWidget {

  final AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);
  final AudioCache audioCache = AudioCache();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Flutter >> Xamarin'),
      ),

      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            // image: NetworkImage('https://pbs.twimg.com/media/D7w1Z7qWsAUqY0y.jpg'),
            image: NetworkImage('https://i.pinimg.com/originals/47/77/2f/47772fe1b513dfad3789ddf0facff2e4.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(1), BlendMode.color)
          ),
        ),

        child: ListView.separated(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Música $index.mp3', style: TextStyle(color: Colors.white),),
              onTap: () async {
                //monsterslap.mp3
                if(index %2 == 0) {
                   int result = await audioPlayer.play('http://www.evidenceaudio.com/wp-content/uploads/2014/10/lyricchords.mp3');
                  print(result);
                }else {
                  audioCache.play('monsterslap.mp3');
                }               
              },
            );
          },
          separatorBuilder: (context, index) => Divider(color: Colors.white,),
        ),
      ),
    );
  }
}