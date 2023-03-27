import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

extension ColorExtension on String {
  toColor6() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class Lecon36 extends StatefulWidget {
  const Lecon36({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Lecon36> createState() => _Lecon36State();
}

class _Lecon36State extends State<Lecon36> {
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

  String audio0 = 'audio/lecon35/daniellePhrase.mp3';
  String audio1 = 'audio/lecon35/danielle.mp3';
  String audio2 = 'audio/lecon35/donne.mp3';
  String audio3 = 'audio/lecon35/dani.mp3';
  String audio4 = 'audio/lecon35/don.mp3';
  String audio5 = 'audio/lecon35/dan.mp3';
  String audio6 = 'audio/lecon35/do.mp3';
  String audio7 = 'audio/lecon35/da.mp3';
  String audio8 = 'audio/lecon35/do.mp3';
  String audio9 = 'audio/lecon35/d.mp3';
  String audio10 = 'audio/lecon35/d.mp3';
  // String audio11 = 'audio/lecon9/e.mp3';
  // String audio11 = 'audio/lecon3/O.mp3';
  // String audio12 = 'audio/lecon3/e.mp3';

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
    player.play(AssetSource('audio/lecon9/$thesound.mp3'));
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
        colorArray[10] = Colors.white;
      } else if (i == 8) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[10] = Colors.white;
      } else if (i == 9) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[9] = Colors.yellowAccent;
        colorArray[10] = Colors.white;
      } else {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[9] = Colors.white;
        colorArray[10] = Colors.yellowAccent;
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
      } else if (state == 7) {
        theaudio = audio7;
      } else if (state == 8) {
        theaudio = audio8;
      } else if (state == 9) {
        theaudio = audio9;
      } else if (state == 10) {
        theaudio = audio10;
      }
      //else if (state == 11) {
      //   theaudio = audio11;
      // }
      else {
        theaudio = audio0;
      }
      //player.setAsset(theaudio);
      player.play(AssetSource(theaudio));
      try {
        if (state > 10) {
          state = 0;
        }
        for (int i = 0; i < 22; i++) {
          if (state == i) {
            colorArray[i] = Colors.yellowAccent;
            //    'thebackcolor$state' =  Colors.white;
          } else {
            colorArray[i] = Colors.white;
          }
          // if (i == 0) {
          //   setState(() {
          //     state == i;
          //     colorArray[i] = Colors.white;
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
  Text MesPhrases({
    Color? color,
    String? text,
    int i = 0,
  }) {
    return Text(
      text!,
      style: TextStyle(
          color: color,
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins',
          fontSize: 20,
          background: Paint()
            ..strokeWidth = 3.0
            ..color = colorArray[i]
            ..style = PaintingStyle.stroke
            ..strokeJoin = StrokeJoin.round),
    );
  }

//Fin lecture phrase et les mots

  //Début lecture des syllabes
  SizedBox Syllabes({String? son, required child}) {
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
        toolbarHeight: 30,
        backgroundColor: '#fcca0c'.toColor6(),
        title: Text(
          widget.title + 'Leçon 36',
          style:
              TextStyle(color: Color(0xff000000), fontStyle: FontStyle.italic),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10), //apply padding to all four sides
              child: Text(
                'Les milliers',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            SizedBox(
              //  Image illustration
              width: 200,
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // Expanded(
                SizedBox(
                  //  Image illustration
                  width: 200,
                  height: 300,
                  child: Column(
                    children: <Widget>[
                      Row(
                        //Menu buttons---------
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
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 200,
                            height: 200,
                            child: Image(
                              image: AssetImage('assets/lecon35/photo.png'),
                            ),
                          ),
                        ],
                      ),
                      //--- Menu -----------------------
                    ],
                  ),
                ),
                // ),
                // Expanded(
                SizedBox(
                  // les phrases
                  width: 440,
                  height: 280,
                  child: Column(
                    children: <Widget>[
                      // Ligne 1----------------------------------------///
                      Row(
                        // Ligne 1
                        children: <Widget>[
                          //Elève
                          MesPhrases(
                              text: "Dans l’ONG Ga-Tic, le droit d’adhésion ",
                              i: 1),
                        ],
                        //Text('Ulrich cuisine une soupe'),
                      ),

                      // Ligne 2----------------------------------------///
                      Row(
                        // Ligne 2
                        children: <Widget>[
                          SizedBox(
                            height: 40,
                          ),
                          MesPhrases(text: "est de ", i: 1),
                          MesPhrases(text: "3000 ", i: 1, color: Colors.red),
                          MesPhrases(text: "F CFA. Pour être membre de ", i: 1),
                        ],
                        //Text('L'élève a été frappé et blessé'),
                      ),

                      // Ligne 3----------------------------------------///
                      Row(
                        // Ligne 3
                        children: <Widget>[
                          MesPhrases(
                              text: " l’organisation, il faut s’acquitter ",
                              i: 1),
                          MesPhrases(text: "de cette", i: 1),
                        ],
                        //Text('L'élève a été frappé et blessé'),
                      ),
                      Row(
                        // Ligne 3
                        children: <Widget>[
                          MesPhrases(text: " somme. ", i: 1),
                        ],
                        //Text('L'élève a été frappé et blessé'),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      // Ligne 4----------------------------------------///
                      Row(
                        // Ligne 3
                        children: <Widget>[
                          MesPhrases(text: "3000", color: Colors.red, i: 2),
                          MesPhrases(text: " F CFA, c’est", i: 2),
                          MesPhrases(
                              text: " 30 X 100", color: Colors.red, i: 2),
                          MesPhrases(text: " F CFA ", i: 2),
                        ],
                        //Text('L'élève a été frappé et blessé'),
                      ),
                    ],
                  ),
                ),
                // ),
              ],
            ),

            // les deux images d'exemples
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 230,
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('assets/lecon36/image1.png'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
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
                      extraHilght(3);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(
                          text:
                              "Mettre les nombres suivants dans le Tableau des milliers:",
                          i: 3),
                    ]),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(4);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(text: "97 650", i: 4),
                    ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(5);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(text: "864 540 ", i: 5),
                    ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(6);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(text: "2 390", i: 6),
                    ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(7);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(text: "765 415", i: 7),
                    ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(8);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(text: "900 000", i: 8),
                    ]),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 280,
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('assets/lecon36/image2.png'),
                      ),
                    ],
                  ),
                ),
              ],
            ),

//Addition
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 30),
                  child: InkWell(
                    onTap: () {
                      extraHilght(9);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(
                          text: "Effectuez les Operations suivantes :", i: 9),
                    ]),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 20),
                  child: InkWell(
                    onTap: () {
                      extraHilght(10);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(text: "L’addition:", i: 10),
                    ]),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(11);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(text: "56 000 + 69 000 = ", i: 11),
                    ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(12);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(text: "38 000 + 10 0000 =", i: 12),
                    ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(13);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(text: "47 000 + 3 550 =", i: 13),
                    ]),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 700,
                  height: 200,
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('assets/lecon36/addition.png'),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //Soustraction

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 20),
                  child: InkWell(
                    onTap: () {
                      extraHilght(14);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(text: "La soustration:", i: 14),
                    ]),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(15);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(text: "197 000 – 130 000 = ", i: 15),
                    ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(16);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(text: "364 800 – 8 950 =", i: 16),
                    ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(17);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(text: "450 000 – 95 000 =", i: 17),
                    ]),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 700,
                  height: 200,
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('assets/lecon36/soustraction.png'),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //Multiplication

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 20),
                  child: InkWell(
                    onTap: () {
                      extraHilght(14);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(text: "La multiplication:", i: 18),
                    ]),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(19);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(text: "96 300 X 40 = ", i: 19),
                    ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(20);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(text: "48 000 X 6 =", i: 20),
                    ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(21);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(text: "18 700 X 30 =", i: 21),
                    ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(22);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(text: "54 100 X 70 =", i: 22),
                    ]),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 700,
                  height: 200,
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('assets/lecon36/multiplication.png'),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //Division

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 20),
                  child: InkWell(
                    onTap: () {
                      extraHilght(14);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(text: "La division:", i: 18),
                    ]),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(19);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(text: " 30 500 ÷ 5 = ", i: 19),
                    ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(20);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(text: "80 000 ÷ 4 =", i: 20),
                    ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(21);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(text: "96 600 ÷ 3 =", i: 21),
                    ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(22);
                      player.play(AssetSource('audio/lecon35/texte.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(text: "21 000 ÷ 7 =", i: 22),
                    ]),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 700,
                  height: 200,
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('assets/lecon36/division.png'),
                      ),
                    ],
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
