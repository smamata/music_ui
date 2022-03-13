import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_ui/lyric.dart';

class Music extends StatefulWidget {
  const Music({Key? key}) : super(key: key);

  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
            ),
          ),
          Positioned(
            top: 60,
            left: 20,
            child: Text(
              "DANCE MONKEY",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.blue.shade900),
            ),
          ),
          Positioned(
            top: 120,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tone and I",
                  style: TextStyle(
                      color: Colors.blue.shade800, fontWeight: FontWeight.w500),
                ),
                Text(
                  "Abcd's Air Pods Pro",
                  style: TextStyle(color: Colors.blue.shade200),
                )
              ],
            ),
          ),
          Positioned(
            top: 220,
            left: 40,
            child: Container(
              height: 330,
              decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(26),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2, color: Colors.white70, spreadRadius: 5)
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 20),
                    child: Icon(
                      Icons.data_saver_off_sharp,
                      size: 30,
                      color: Colors.blue.shade200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 20),
                    child: Icon(
                      Icons.skip_next_sharp,
                      size: 30,
                      color: Colors.blue.shade200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Icon(
                      Icons.pause,
                      size: 30,
                      color: Colors.blue.shade200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 20),
                    child: Icon(
                      Icons.skip_previous,
                      size: 30,
                      color: Colors.blue.shade200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 20),
                    child: Icon(
                      Icons.favorite,
                      size: 30,
                      color: Colors.red.shade500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 170,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(blurRadius: 8, color: Colors.white, spreadRadius: 8)
                ],
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white10,
                radius: 180,
                child: CircleAvatar(
                  radius: 175,
                  backgroundColor: Colors.blue.shade50,
                  child: CircleAvatar(
                    radius: 140,
                    backgroundImage: AssetImage(
                      "images/abcd.jpeg",
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 600,
            left: 50,
            child: Row(
              children: [
                Text(
                  "See you see",
                  style: TextStyle(
                      color: Colors.blue.shade600,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "you seem you everytime..",
                  style: TextStyle(
                      color: Colors.blue.shade200,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
              ],
            ),
          ),
          Positioned(
            top: 620,
            left: 110,
            child: OutlinedButton(
              style: ButtonStyle(),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Lyrics()),
                );
              },
              child: Text(
                "See all lyrics",
                style: TextStyle(
                    color: Colors.blue.shade200,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
