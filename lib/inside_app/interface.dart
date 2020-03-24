import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  String image_pop, text_pop, sound_url;

  Widget _popUpGallery(BuildContext context) {
    return new AlertDialog(
      title: new PopUp(
        image: image_pop,
        text: text_pop,
      ),
      actions: <Widget>[
// player.play(alarmAudioPath);
      ],
    );
  }
// static const alarmAudioPath = "assets/sound/apple.mp3";

// // static AudioCache player = new AudioCache();

// var audioObject =  AudioCache(fixedPlayer: audioPlayer);

// AudioPlayer audioPlayer;
// AudioCache audioCache;

// play(){
//   audioCache.play("assets/sound/apple.mp3");
// }

 void playSound() {
    AudioCache cache = new AudioCache();
    cache.play(sound_url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[900],
        title: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Text(
            "LET'S LEARN ENGLISH!!!",
            style: new TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Container(
        color: Colors.brown[300],
        //  decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/images/background.jpg"),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: ListView(
          children: <Widget>[
            // Padding(
            //   padding: const EdgeInsets.only(top:15.0),
            //   child: Center(
            //       child: Text(
            //     "LET'S LEARN\n  ENGLISH!!!",
            //     style: new TextStyle(fontSize: 35.0, color: Colors.black, fontWeight: FontWeight.bold),
            //   )),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      image_pop = "assets/images/apple.png";
                      text_pop = "APPLE";
                      sound_url = "sound/apple.mp3";
                    });
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => _popUpGallery(context),
                    );
                    playSound();
                    // player.play(alarmAudioPath);
                  },
                  child: new ImageList1(
                    image: "assets/images/apple.png",
                    width: 150,
                    text: "APPLE",
                    size: 20,
                    // image2: "assets/images/banana.png",
                    // width2: 128,
                    // text2: "BANANA",
                    // size2: 20,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      image_pop = "assets/images/banana.png";
                      text_pop = "BANANA";
                      sound_url = "sound/banana.mp3";
                    });
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => _popUpGallery(context),
                    );
                    playSound();
                  },
                  child: new ImageList2(
                    // image: "assets/images/apple.png",
                    // width: 150,
                    // text: "APPLE",
                    // size: 20,
                    image2: "assets/images/banana.png",
                    width2: 128,
                    text2: "BANANA",
                    size2: 20,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      image_pop = "assets/images/cherry.png";
                      text_pop = "CHERRY";
                      sound_url = "sound/cherry.mp3";
                    });
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => _popUpGallery(context),
                    );
                    playSound();
                  },
                  child: new ImageList1(
                    image: "assets/images/cherry.png",
                    width: 148,
                    text: "CHERRY",
                    size: 20,
                    // image2: "assets/images/dragon fruit.png",
                    // width2: 125,
                    // text2: "DRAGON",
                    // size2: 20,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      image_pop = "assets/images/dragon fruit.png";
                      text_pop = "DRAGON FRUIT";
                      sound_url = "sound/dragon_fruit.mp3";
                    });
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => _popUpGallery(context),
                    );
                    playSound();
                  },
                  child: new ImageList2(
                    // image: "assets/images/cherry.png",
                    // width: 148,
                    // text: "CHERRY",
                    // size: 20,
                    image2: "assets/images/dragon_fruit.png",
                    width2: 125,
                    text2: "DRAGON",
                    size2: 20,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      image_pop = "assets/images/onion.png";
                      text_pop = "ONION";
                      sound_url = "sound/onion.mp3";
                    });
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => _popUpGallery(context),
                    );
                    playSound();
                  },
                  child: new ImageList1(
                    image: "assets/images/onion.png",
                    width: 140,
                    text: "ONION",
                    size: 20,
                    // image2: "assets/images/orange.png",
                    // width2: 130,
                    // text2: "ORANGE",
                    // size2: 20,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      image_pop = "assets/images/orange.png";
                      text_pop = "ORANGE";
                      sound_url = "sound/orange.mp3";
                    });
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => _popUpGallery(context),
                    );
                    playSound();
                  },
                  child: new ImageList2(
                    // image: "assets/images/onion.png",
                    // width: 140,
                    // text: "ONION",
                    // size: 20,
                    image2: "assets/images/orange.png",
                    width2: 130,
                    text2: "ORANGE",
                    size2: 20,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      image_pop = "assets/images/pear.png";
                      text_pop = "PEAR";
                      sound_url = "sound/pear.mp3";
                    });
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => _popUpGallery(context),
                    );
                    playSound();
                  },
                  child: new ImageList1(
                    image: "assets/images/pear.png",
                    width: 150,
                    text: "PEAR",
                    size: 20,
                    // image2: "assets/images/potato.png",
                    // width2: 140,
                    // text2: "POTATO",
                    // size2: 20,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      image_pop = "assets/images/potato.png";
                      text_pop = "POTATO";
                      sound_url = "sound/potato.mp3";
                    });
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => _popUpGallery(context),
                    );
                    playSound();
                  },
                  child: new ImageList2(
                    // image: "assets/images/pear.png",
                    // width: 150,
                    // text: "PEAR",
                    // size: 20,
                    image2: "assets/images/potato.png",
                    width2: 140,
                    text2: "POTATO",
                    size2: 20,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      image_pop = "assets/images/raspberry.png";
                      text_pop = "RASPBERRY";
                      sound_url = "sound/raspberry.mp3";
                    });
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => _popUpGallery(context),
                    );
                    playSound();
                  },
                  child: new ImageList1(
                    image: "assets/images/raspberry.png",
                    width: 150,
                    text: "RASPBERRY",
                    size: 20,
                    // image2: "assets/images/wortel.png",
                    // width2: 140,
                    // text2: "CARROT",
                    // size2: 20,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      image_pop = "assets/images/wortel.png";
                      text_pop = "CARROT";
                      sound_url = "sound/carrot.mp3";
                    });
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => _popUpGallery(context),
                    );
                    playSound();
                  },
                  child: new ImageList2(
                    // image: "assets/images/raspberry.png",
                    // width: 150,
                    // text: "RASPBERRY",
                    // size: 20,
                    image2: "assets/images/wortel.png",
                    width2: 140,
                    text2: "CARROT",
                    size2: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ImageList1 extends StatelessWidget {
  ImageList1(
      {this.image,
      this.text,
      this.image2,
      this.text2,
      this.size,
      this.size2,
      this.width,
      this.width2});

  String image, text, image2, text2;
  double size, size2;
  double width, width2;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    image,
                    width: width,
                  ),
                  Text(
                    text,
                    style: new TextStyle(fontSize: size),
                  ),
                ],
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(12.0),
          //   child: Card(
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(15.0),
          //     ),
          //     child: Column(
          //       children: <Widget>[
          //         Image.asset(
          //           image2,
          //           width: width2,
          //         ),
          //         Text(
          //           text2,
          //           style: new TextStyle(fontSize: size2),
          //         ),
          //       ],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}

class ImageList2 extends StatelessWidget {
  ImageList2(
      {this.image,
      this.text,
      this.image2,
      this.text2,
      this.size,
      this.size2,
      this.width,
      this.width2});

  String image, text, image2, text2;
  double size, size2;
  double width, width2;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Padding(
          //   padding: const EdgeInsets.all(12.0),
          //   child: Card(
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(15.0),
          //     ),
          //     child: Column(
          //       children: <Widget>[
          //         Image.asset(
          //           image,
          //           width: width,
          //         ),
          //         Text(
          //           text,
          //           style: new TextStyle(fontSize: size),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    image2,
                    width: width2,
                  ),
                  Text(
                    text2,
                    style: new TextStyle(fontSize: size2),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PopUp extends StatelessWidget {
  PopUp({
    this.image,
    this.text,
  });

  String image, text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset(image),
          Text(text),
        ],
      ),
    );
  }
}
