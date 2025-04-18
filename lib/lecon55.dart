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

class Lecon55 extends StatefulWidget {
  const Lecon55({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Lecon55> createState() => _Lecon55State();
}

class _Lecon55State extends State<Lecon55> {
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

  String audio0 = 'audio/lecon55/l32.mp3';

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
    player.play(AssetSource('audio/lecon55/$thesound.mp3'));
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
      } else {
        theaudio = audio0;
      }

      //player.setAsset(theaudio);
      player.play(AssetSource(theaudio));
      try {
        if (state > 8) {
          state = 0;
        }
        for (int i = 0; i < 9; i++) {
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
          widget.title + 'Leçon 55',
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
                'Calendrier et événements',
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

                      //--- Menu -----------------------
                    ],
                  ),
                ),

                //  phrase de droite
                Container(
                  margin: EdgeInsets.only(bottom: 100, top: 30, left: 8),
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 5, left: 280),
                  child: Text(
                    "Calendrier 2021",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 300,
              child: Image(
                image: AssetImage('assets/lecon55/calendrier.png'),
                width: 520,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // les syllabes
            Container(
              margin: EdgeInsets.only(bottom: 80, left: 50),
              //width: MediaQuery.of(context).size.width / 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        color: Colors.transparent,
                        margin: EdgeInsets.all(6),
                        child: Table(
                          defaultColumnWidth: FixedColumnWidth(180),
                          border: TableBorder.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1,
                          ),
                          children: [
                            TableRow(children: [
                              Card(
                                  child: new InkWell(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon55/1jan.mp3'));
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      "1 janvier :",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Premier de l'An"),
                                    SizedBox(
                                      height: 90,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon55/24mai.mp3'));
                                },
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "24 mai :",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Lundi de pentecote"),
                                    SizedBox(
                                      height: 35,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                },
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(""),
                                    SizedBox(
                                      height: 35,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                },
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(""),
                                    SizedBox(
                                      height: 35,
                                    ),
                                  ],
                                ),
                              ))
                            ]),
                            TableRow(children: [
                              Card(
                                  child: new InkWell(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon55/4avril.mp3'));
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      "4avril:",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Dimanche de Pâques"),
                                    SizedBox(
                                      height: 90,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon55/14juil.mp3'));
                                },
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "14 juillet :",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Fête Nationale"),
                                    SizedBox(
                                      height: 35,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                },
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(""),
                                    SizedBox(
                                      height: 35,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                },
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(""),
                                    SizedBox(
                                      height: 35,
                                    ),
                                  ],
                                ),
                              ))
                            ]),
                            TableRow(children: [
                              Card(
                                  child: new InkWell(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon55/5avril.mp3'));
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      "5 avril:",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(" Lundi de Pâques"),
                                    SizedBox(
                                      height: 90,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon55/15aou.mp3'));
                                },
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "15 août:",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Assomption"),
                                    SizedBox(
                                      height: 35,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                },
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(""),
                                    SizedBox(
                                      height: 35,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                },
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(""),
                                    SizedBox(
                                      height: 35,
                                    ),
                                  ],
                                ),
                              ))
                            ]),
                            TableRow(children: [
                              Card(
                                  child: new InkWell(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon55/1mai.mp3'));
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      "1 mai:",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(" Fête du travail"),
                                    SizedBox(
                                      height: 90,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon55/1nov.mp3'));
                                },
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "1 novembre :",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Toussaint"),
                                    SizedBox(
                                      height: 35,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                },
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(""),
                                    SizedBox(
                                      height: 35,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                },
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(""),
                                    SizedBox(
                                      height: 35,
                                    ),
                                  ],
                                ),
                              ))
                            ]),
                            TableRow(children: [
                              Card(
                                  child: new InkWell(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon55/8mai.mp3'));
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      "8 mai:",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(" Victoire 1945"),
                                    SizedBox(
                                      height: 90,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon55/11nov.mp3'));
                                },
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "11 novembre :",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(""),
                                    SizedBox(
                                      height: 35,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                },
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(""),
                                    SizedBox(
                                      height: 35,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                },
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(""),
                                    SizedBox(
                                      height: 35,
                                    ),
                                  ],
                                ),
                              ))
                            ]),
                            TableRow(children: [
                              Card(
                                  child: new InkWell(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon55/13mai.mp3'));
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      "13 mai:",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(" Ascension"),
                                    SizedBox(
                                      height: 90,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon55/25dec.mp3'));
                                },
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "25 décembre:",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(" Noël"),
                                    SizedBox(
                                      height: 35,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                },
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(""),
                                    SizedBox(
                                      height: 35,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                },
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(""),
                                    SizedBox(
                                      height: 35,
                                    ),
                                  ],
                                ),
                              ))
                            ]),
                            TableRow(children: [
                              Card(
                                  child: new InkWell(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon55/23mai.mp3'));
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      "23 mai:",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(" Dimanche de \n  Pentecôte"),
                                    SizedBox(
                                      height: 90,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                },
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(""),
                                    SizedBox(
                                      height: 35,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                },
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(""),
                                    SizedBox(
                                      height: 35,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                },
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(""),
                                    SizedBox(
                                      height: 35,
                                    ),
                                  ],
                                ),
                              ))
                            ]),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            // les deux images d'exemples
          ],
        ),
      ),
    );
  }
}
