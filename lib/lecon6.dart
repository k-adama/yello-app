import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:projets/menu.dart';
import 'package:projets/infosymbol.dart';
import 'package:projets/menulecon.dart';

extension ColorExtension on String {
  toColor6() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class Lecon6 extends StatefulWidget {
  const Lecon6({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Lecon6> createState() => _Lecon6State();
}

class _Lecon6State extends State<Lecon6> {
  int state = 1;
  String theaudio = '';
  final player = AudioPlayer();
  static Color thebackcolor0 = Colors.white;
  static Color thebackcolor1 = Colors.white;
  static Color thebackcolor2 = Colors.white;
  static Color thebackcolor3 = Colors.white;
  static Color thebackcolor4 = Colors.white;
  static Color thebackcolor5 = Colors.white;
  static Color thebackcolor6 = Colors.white;
  static Color thebackcolor7 = Colors.white;
  static Color thebackcolor8 = Colors.white;
  static Color thebackcolor9 = Colors.white;
  static Color thebackcolor10 = Colors.white;
  static Color thebackcolor11 = Colors.white;
  static Color thebackcolor12 = Colors.white;
  static Color thebackcolor13 = Colors.white;
  static Color thebackcolor14 = Colors.white;
  static Color thebackcolor15 = Colors.white;
  static Color thebackcolor16 = Colors.white;
  static Color thebackcolor17 = Colors.white;
  static Color thebackcolor18 = Colors.white;
  static Color thebackcolor19 = Colors.white;
  static Color thebackcolor20 = Colors.white;
  static Color thebackcolor21 = Colors.white;
  static Color thebackcolor22 = Colors.white;

  var colorArray = new List<Color>.filled(23, Colors.white, growable: true);
  //static List<Color>colorArray.filled(0,0, growable:true);

  void SetColorArray() {
    colorArray = [
      thebackcolor1,
      thebackcolor2,
      thebackcolor3,
      thebackcolor4,
      thebackcolor5,
      thebackcolor6,
      thebackcolor7,
      thebackcolor8,
      thebackcolor9,
      thebackcolor10,
      thebackcolor11,
      thebackcolor12,
      thebackcolor13,
      thebackcolor14,
      thebackcolor15,
      thebackcolor16,
      thebackcolor17,
      thebackcolor18,
      thebackcolor18,
      thebackcolor19,
      thebackcolor20,
      thebackcolor21,
      thebackcolor22
    ];
  }

  String audio0 = 'audio/lecon6/phrase_0.mp3';
  String audio1 = 'audio/lecon6/lise.mp3';
  String audio2 = 'audio/lecon6/linge.mp3';
  String audio3 = 'audio/lecon6/li.mp3';
  String audio4 = 'audio/lecon6/l.mp3';
  String audio5 = 'audio/lecon6/grand_l.mp3';
  String audio6 = 'audio/lecon6/lo.mp3';
  String audio7 = 'audio/lecon6/li.mp3';
  String audio8 = 'audio/lecon6/la.mp3';
  String audio9 = 'audio/lecon6/lu.mp3';
  String audio10 = 'audio/lecon6/loi.mp3';
  String audio11 = 'audio/lecon6/lom.mp3';
  String audio12 = 'audio/lecon6/le.mp3';
  String audio13 = 'audio/lecon6/lb.mp3';
  String audio14 = 'audio/lecon6/lc.mp3';
  String audio15 = 'audio/lecon6/lai.mp3';
  String audio16 = 'audio/lecon6/lan.mp3';
  String audio17 = 'audio/lecon6/lou.mp3';
  String audio18 = 'audio/lecon6/lui.mp3';
  String audio19 = 'audio/lecon6/ler.mp3';
  String audio20 = 'audio/lecon6/legume.mp3';
  String audio21 = 'audio/lecon6/lame.mp3';
  String audio22 = 'audio/lecon6/text.mp3';

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    //SetColorArray();
    state = 0;
    //changeHilght();
    // player = AudioPlayer();
  }

  void playSound(String thesound) {
    player.play(AssetSource('audio/lecon6/$thesound.mp3'));
  }

  void RepeatVoice() {
    player.play(AssetSource(theaudio));
  }

  void extraHilght(int i) async {
    setState(() {
      if (i == 7) {
        colorArray[7] = Colors.yellowAccent;
        colorArray[8] = Colors.white;
        colorArray[9] = Colors.white;
      } else if (i == 8) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
      } else {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[9] = Colors.yellowAccent;
      }
    });
  }

  void changeHilght() async {
    setState(() {
      if (state == 0) {
        theaudio = audio0;
      } else if (state == 1) {
        theaudio = audio1;
      } else if (state == 2) {
        theaudio = audio2;
      } else if (state == 3) {
        theaudio = audio3;
      } else if (state == 4) {
        theaudio = audio4;
      } else if (state == 5) {
        theaudio = audio5;
      } else if (state == 6) {
        theaudio = audio6;
      } else {
        theaudio = audio0;
      }
      //player.setAsset(theaudio);
      player.play(AssetSource(theaudio));
      try {
        if (state > 6) {
          state = 0;
        }
        for (int i = 0; i < 23; i++) {
          if (state == i) {
            colorArray[i] = Colors.yellowAccent;
            //    'thebackcolor$state' =  Colors.white;
          } else {
            colorArray[i] = Colors.white;
          }
          // if (i == 0) {
          //   setState(() {
          //     state == i;
          //     colorArray[i] = Colors.yellowAccent;;
          //   });
          //   //    'thebackcolor$state' =  Colors.white;
          // } else if (state == i) {
          //   colorArray[i] = Colors.yellowAccent;
          // } else {
          //   colorArray[i] = Colors.white;
          // }
        }
        //SetColorArray();
        state = state + 1;
        print(state);
      } on Exception catch (_) {
        print('error');
      }
      //theaudio = 'audio$state';
    });
    print(theaudio);
  }

  //Lire phrase et les mots
  Text letters({
    Color? color,
    String? text,
    int i = 0,
    double size = 20,
    FontWeight? font,
  }) {
    return Text(
      text!,
      style: TextStyle(
          color: color,
          fontWeight: font,
          fontFamily: 'Poppins',
          fontSize: size,
          background: Paint()
            ..strokeWidth = 3.0
            ..color = colorArray[i]
            ..style = PaintingStyle.stroke
            ..strokeJoin = StrokeJoin.round),
    );
  }

//Fin lecture phrase et les mots

  //Début lecture des syllabes
  SizedBox Syllabes({String? son}) {
    return SizedBox(
      width: 100,
      height: 80,
      child: Card(
        child: new InkWell(
          onTap: () {
            playSound(son);
          },
          child: Center(
              child: Text(
            son!,
            style: TextStyle(
              fontSize: 35,
              fontFamily: 'Poppins',
            ),
          )),
        ),
      ),
    );
  }
  //Fin lecture des syllabes

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: '#fcca0c'.toColor2(),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 40,
        backgroundColor: '#fcca0c'.toColor6(),
        title: Text(
          widget.title + 'Leçon 6',
          style:
              TextStyle(color: Color(0xff000000), fontStyle: FontStyle.italic),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //titre de la leçon
            Padding(
              padding: EdgeInsets.all(10), //apply padding to all four sides
              child: Text(
                'l / L',
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
            ),
            //contenu de la leçon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //  Image illustration de gauche
                SizedBox(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 100,
                            height: 50,
                            child: Card(
                              child: new InkWell(
                                onTap: () {
                                  // Navigator.pushNamed(context, '/menu');
                                  Navigator.pop(context);
                                },
                                child: const Icon(Icons.arrow_back_ios),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                            height: 50,
                            child: Card(
                              child: new InkWell(
                                onTap: () {
                                  //print("tapped");
                                  RepeatVoice();
                                },
                                child: const Icon(Icons.repeat),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                            height: 50,
                            child: Card(
                              child: new InkWell(
                                onTap: () {
                                  changeHilght();
                                },
                                child: const Icon(Icons.speaker_notes),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 200,
                        child: Image(
                          image: AssetImage('assets/lecon6/img_1.png'),
                          width: 300,
                        ),
                      ),

                      //--- Menu -----------------------
                    ],
                  ),
                ),

                //  phrase de droite
                Container(
                  margin: EdgeInsets.only(bottom: 100, top: 30),
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          letters(
                              text: "L",
                              font: FontWeight.w600,
                              size: 30,
                              color: Colors.red),
                          letters(
                            text: "ise",
                            font: FontWeight.w600,
                            size: 25,
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          letters(
                            text: "lave",
                            font: FontWeight.w600,
                            size: 25,
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          letters(
                            text: "le",
                            font: FontWeight.w600,
                            size: 25,
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          letters(
                            text: "linge.",
                            font: FontWeight.w600,
                            size: 25,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "L",
                              font: FontWeight.w600,
                              size: 25,
                              i: 1,
                              color: Colors.red),
                          letters(
                            text: "ise",
                            font: FontWeight.w600,
                            size: 20,
                            i: 1,
                          ),
                          SizedBox(
                            width: 200,
                          ),
                          letters(
                            text: "linge",
                            font: FontWeight.w600,
                            size: 20,
                            i: 2,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "L",
                              font: FontWeight.w600,
                              size: 25,
                              i: 3,
                              color: Colors.red),
                          letters(
                            text: "i",
                            font: FontWeight.w600,
                            size: 20,
                            i: 3,
                          ),
                          SizedBox(
                            width: 225,
                          ),
                          letters(
                            text: "li",
                            font: FontWeight.w600,
                            size: 20,
                            i: 4,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "L",
                              font: FontWeight.w600,
                              size: 25,
                              i: 5,
                              color: Colors.red),
                          SizedBox(
                            width: 230,
                          ),
                          letters(
                            text: "l",
                            font: FontWeight.w600,
                            size: 20,
                            i: 6,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // les syllabes
            Container(
              margin: EdgeInsets.only(bottom: 80, top: 30, left: 50),
              //width: MediaQuery.of(context).size.width / 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 60,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon6/l.mp3'));
                            },
                            child: Center(
                                child: Text('l',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600))),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon6/l.mp3'));
                            },
                            child: Center(
                                child: Text('L',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600))),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon6/l.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon6/l.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon6/l.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon1/l.png")),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon6/lo.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon6/lo.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon6/li.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon6/li.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon6/la.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon6/la.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon6/lu.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon6/lu.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon6/loi.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon6/loi.png")),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon6/lom.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon6/lom.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon6/le.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon6/le.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon6/lb.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon6/lb.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon6/lc.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon6/l.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon6/lai.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon6/lai.png")),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon6/lan.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon6/lan.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon6/lou.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon6/lou.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon6/lui.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon6/lui.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon6/ler.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon6/ler.png")),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // les deux images d'exemples
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300,
                  child: InkWell(
                    onTap: () {
                      extraHilght(7);
                      player.play(AssetSource('audio/lecon6/legume.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon6/img_2.png'),
                          width: 300,
                          height: 200,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            letters(
                              text: "des ",
                              i: 7,
                            ),
                            letters(
                              text: "lé",
                              color: Colors.red,
                              font: FontWeight.w600,
                              i: 7,
                            ),
                            letters(text: "gumes", i: 7),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 300,
                  child: InkWell(
                    onTap: () {
                      extraHilght(8);
                      player.play(AssetSource('audio/lecon6/lame.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon6/img_3.png'),
                          width: 300,
                          height: 200,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            letters(
                              text: "une ",
                              i: 8,
                            ),
                            letters(
                                text: "la",
                                color: Colors.red,
                                font: FontWeight.w600,
                                i: 8),
                            letters(text: "me", i: 8),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // le text de la fin
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(9);
                      player.play(AssetSource('audio/lecon6/text.mp3'));
                    },
                    child: Column(children: [
                      letters(
                          text:
                              "Lise lave le linge. Lise lave les habits de papa et maman tous",
                          i: 9),
                      letters(
                          text:
                              "les dimanches. Lise porte des vêtements propres. Elle repasse ",
                          i: 9),
                      letters(
                          text:
                              "sa tenue scolaire. De retour de l'école, Lise aide sa maman",
                          i: 9),
                      letters(
                          text:
                              "dans les tâches domestiques. Elle aide son petit frère à faire",
                          i: 9),
                      letters(text: "ses devoirs de maison.", i: 9),
                    ]),
                  ),
                ),
              ],
            )

            //---------------- Les phrases de fin ------------
            // Row(
            //   //---------------- Les  sons ------------
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: <Widget>[
            //     Column(
            //       children: <Widget>[
            //         SizedBox(
            //           width: 300,
            //           height: 20,
            //         ),
            //         SizedBox(
            //           width: 550,
            //           height: 300,
            //           child: Text(
            //             "Il nous faut chercher du bon texte",
            //             style: TextStyle(
            //                 color: Colors.black,
            //                 fontSize: 30,
            //                 fontFamily: 'Poppins',
            //                 background: Paint()
            //                   ..strokeWidth = 25.0
            //                   ..color = Colors.white
            //                   ..style = PaintingStyle.fill
            //                   ..strokeJoin = StrokeJoin.round),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
