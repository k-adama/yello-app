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

class Lecon13 extends StatefulWidget {
  const Lecon13({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Lecon13> createState() => _Lecon13State();
}

class _Lecon13State extends State<Lecon13> {
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

  String audio0 = 'audio/lecon3/l13.mp3';
  String audio1 = 'audio/lecon3/alima.mp3';
  String audio2 = 'audio/lecon3/alphabetisation.mp3';
  String audio3 = 'audio/lecon3/ali.mp3';
  String audio4 = 'audio/lecon3/al.mp3';
  String audio5 = 'audio/lecon3/a.mp3';
  String audio6 = 'audio/lecon3/a.mp3';
  String audio7 = 'audio/lecon3/a.mp3';
  String audio8 = 'audio/lecon3/a.mp3';
  String audio9 = 'audio/lecon3/pa1.mp3';
  String audio10 = 'audio/lecon3/la1.mp3';
  String audio11 = 'audio/lecon3/da.mp3';
  String audio12 = 'audio/lecon3/ga.mp3';
  String audio13 = 'audio/lecon3/ra.mp3';
  String audio14 = 'audio/lecon3/ma1.mp3';
  String audio15 = 'audio/lecon3/ta1.mp3';
  String audio16 = 'audio/lecon3/a.mp3';
  String audio17 = 'audio/lecon14/lou.mp3';
  String audio18 = 'audio/lecon14/lui.mp3';
  String audio19 = 'audio/lecon14/ler.mp3';
  String audio20 = 'audio/lecon14/legume.mp3';
  String audio21 = 'audio/lecon14/lame.mp3';
  String audio22 = 'audio/lecon14/text.mp3';

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
    player.play(AssetSource('audio/lecon3/$thesound.mp3'));
  }

  void RepeatVoice() {
    player.play(AssetSource(theaudio));
  }

  void extraHilght(int indice) async {
    setState(() {
      for (int i = 9; i < 13; i++) {
        if (indice == i) {
          colorArray[i] = Colors.yellowAccent;
          //    'thebackcolor$state' =  Colors.white;
        } else {
          colorArray[i] = Colors.white;
        }
      }
      // if(i == 7){
      //   colorArray[7] = Colors.yellowAccent;
      //   colorArray[8] = Colors.white;
      //   colorArray[9] = Colors.white;
      // } else if(i == 8) {
      //   colorArray[7] = Colors.white;
      //   colorArray[8] = Colors.yellowAccent;
      //   colorArray[9] = Colors.white;
      // } else {
      //    colorArray[7] = Colors.white;
      //   colorArray[8] = Colors.white;
      //   colorArray[9] = Colors.yellowAccent;
      // }
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
      } else if (state == 7) {
        theaudio = audio7;
      } else if (state == 8) {
        theaudio = audio8;
      } else {
        theaudio = audio0;
      }
      //player.setAsset(theaudio);
      player.play(AssetSource(theaudio));
      try {
        if (state > 8) {
          state = 0;
        }
        for (int i = 0; i < 23; i++) {
          if (state == i) {
            colorArray[i] = Colors.yellowAccent;
            //    'thebackcolor$state' =  Colors.white;
          } else {
            colorArray[i] = Colors.white;
          }
        }
        //SetColorArray();
        state = state + 1;
        print(state);
      } on Exception catch (_) {
        print('error');
      }
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
          widget.title + 'Leçon 13',
          style:
              TextStyle(color: Color(0xff000000), fontStyle: FontStyle.italic),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //titre de la leçon
            Padding(
              padding: EdgeInsets.all(20), //apply padding to all four sides
              child: Text(
                'a / A',
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
                          image: AssetImage('assets/lecon/l13.png'),
                          width: 230,
                        ),
                      ),

                      //--- Menu -----------------------
                    ],
                  ),
                ),

                //  phrase de droite
                Container(
                  margin: EdgeInsets.only(bottom: 100, top: 50),
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(right: 10)),
                      Row(
                        children: <Widget>[
                          SizedBox(),
                          letters(
                            text:
                                "1. Alima suit des cours d'alphabetisation avec Ga-Tic.",
                            size: 15,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "Alima",
                            size: 20,
                            i: 1,
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          letters(
                            text: "alphabetisation",
                            size: 20,
                            i: 2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "Ali",
                            size: 20,
                            i: 3,
                          ),
                          SizedBox(
                            width: 120,
                          ),
                          letters(
                            text: "al",
                            size: 20,
                            i: 4,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "A",
                            size: 25,
                            i: 5,
                          ),
                          SizedBox(
                            width: 125,
                          ),
                          letters(
                            text: "a",
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
                              player.play(AssetSource('audio/lecon3/a.mp3'));
                            },
                            child: Center(
                                child: Image.asset("assets/lecon/a3.png")),
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
                              player.play(AssetSource('audio/lecon3/a.mp3'));
                            },
                            child: Center(
                                child: Text('A',
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
                              player.play(AssetSource('audio/lecon3/a.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon/a1.png")),
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
                              player.play(AssetSource('audio/lecon3/a.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon/a0.png")),
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
                              player.play(AssetSource('audio/lecon3/pa1.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon/pa.png")),
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
                              player.play(AssetSource('audio/lecon3/la1.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon/la.png")),
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
                              player.play(AssetSource('audio/lecon3/da.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon/da.png")),
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
                              player.play(AssetSource('audio/lecon3/ga.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon/ga.png")),
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
                              player.play(AssetSource('audio/lecon3/ra.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon/ra.png")),
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
                              player.play(AssetSource('audio/lecon3/sa1.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon/sa.png")),
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
                              player.play(AssetSource('audio/lecon3/ma1.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon/ma.png")),
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
                              player.play(AssetSource('audio/lecon3/na1.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon/na.png")),
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
                              player.play(AssetSource('audio/lecon3/ta1.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon/ta.png")),
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
                              player.play(AssetSource('audio/lecon3/a.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon/ha.png")),
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
                              player.play(AssetSource('audio/lecon3/ka.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon/ka.png")),
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
                              player.play(AssetSource('audio/lecon3/sa1.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon/xa.png")),
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
                              player.play(AssetSource('audio/lecon3/ja.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon/ja.png")),
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
                              player.play(AssetSource('audio/lecon3/wa.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon/wa.png")),
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
                              player.play(AssetSource('audio/lecon3/ba.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon/ba.png")),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // les TROIS images d'exemples
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300,
                  width: 200,
                  child: InkWell(
                    onTap: () {
                      extraHilght(9);
                      player.play(AssetSource('audio/lecon3/craie.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon/craie.png'),
                          width: 200,
                          height: 200,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            letters(
                              text: "la ",
                              color: Colors.red,
                              i: 9,
                            ),
                            letters(
                              text: "craie",
                              font: FontWeight.w600,
                              i: 9,
                            ),
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
                  width: 200,
                  child: InkWell(
                    onTap: () {
                      extraHilght(10);
                      player.play(AssetSource('audio/lecon3/table.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon/table.png'),
                          width: 200,
                          height: 200,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            letters(
                              text: "une ",
                              i: 10,
                            ),
                            letters(
                                text: "ta",
                                color: Colors.red,
                                font: FontWeight.w600,
                                i: 10),
                            letters(text: "ble", i: 10),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 300,
                  width: 200,
                  child: InkWell(
                    onTap: () {
                      extraHilght(11);
                      player.play(AssetSource('audio/lecon3/machette.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon/machette.png'),
                          width: 200,
                          height: 200,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            letters(
                              text: "une ",
                              i: 11,
                            ),
                            letters(
                                text: "ma",
                                color: Colors.red,
                                font: FontWeight.w600,
                                i: 11),
                            letters(text: "chette", i: 11),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(12);
                      player.play(AssetSource('audio/lecon3/alimaphrase.mp3'));
                    },
                    child: Column(children: [
                      letters(
                          text:
                              "Alima sait lire, écrire et calculer. Elle a appris à écrire son nom",
                          i: 12),
                      letters(
                          text:
                              "et son prénom. Elle calcule ses bénéfices avec une",
                          i: 12),
                      letters(
                          text:
                              "calculatrice. Alima maîtrise les calculs de base. Pour ses",
                          i: 12),
                      letters(
                          text:
                              "factures et son compte d’exploitation prévisionnel, elle ne ",
                          i: 12),
                      letters(
                          text: "demande plus l’aide de son petit frère Abib.",
                          i: 12),
                    ]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
