import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:projets/evaluationSymbol.dart';
import 'package:projets/evaluationSyllable.dart';

import 'package:projets/menu.dart';

extension ColorExtension on String {
  toColor5() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class MenuEvaluation extends StatefulWidget {
  const MenuEvaluation({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MenuEvaluation> createState() => _MenuEvaluationState();
}

class _MenuEvaluationState extends State<MenuEvaluation> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: '#fcca0c'.toColor2(),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.arrow_back_ios,
        //     color: Colors.black,
        //   ),
        //   tooltip: "Close",
        //   onPressed: () {
        //     Navigator.pushReplacementNamed(context, '/menu');
        //   },
        // ),
        backgroundColor: '#fcca0c'.toColor5(),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          widget.title + 'Menu des évaluations',
          style:
              TextStyle(color: Color(0xff000000), fontStyle: FontStyle.italic),
        ),
      ),
      body: SingleChildScrollView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(4), //apply padding to all four sides
              child: Text(
                '',
                style: TextStyle(fontSize: 25),
              ),
            ),
// --- Ligne  1 -------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // Expanded(
                SizedBox(
                  width: 150,
                  height: 70,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        // Navigator.pushNamed(context, '/evaluationSyllable');
                        //print("tapped");
                      },
                      child: Center(child: Text('Leçon 1')),
                    ),
                  ),
                ),
                // ),
                // Expanded(
                SizedBox(
                  width: 150,
                  height: 70,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        // Navigator.pushNamed(context, '/lecon2');
                        print("tapped");
                      },
                      child: Center(child: Text('Leçon 2')),
                    ),
                  ),
                ),

                SizedBox(
                  width: 150,
                  height: 70,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        // Navigator.pushNamed(context, '/lecon3');
                        // print("tapped");
                      },
                      child: Center(child: Text('Leçon 3')),
                    ),
                  ),
                ),

                // ),
              ],
            ),
            // --- Ligne  2 -------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //Expanded(

                //),

                //Expanded(
                SizedBox(
                  width: 150,
                  height: 70,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        // Navigator.pushNamed(context, '/lecon4');
                        // print("tapped");
                      },
                      child: Center(child: Text('Leçon 4')),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 70,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        // Navigator.pushNamed(context, '/lecon5');
                        // print("tapped");
                      },
                      child: Center(child: Text('Leçon 5')),
                    ),
                  ),
                ),

                SizedBox(
                  width: 150,
                  height: 70,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                      },
                      child: Center(child: Text('Leçon 6')),
                    ),
                  ),
                ),

                //),
              ],
            ),
            //--- Ligne 3 ----------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //Expanded(

                //),

                //Expanded(
                SizedBox(
                  width: 150,
                  height: 70,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                      },
                      child: Center(child: Text('Leçon 7')),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 70,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                      },
                      child: Center(child: Text('Leçon 8')),
                    ),
                  ),
                ),

                SizedBox(
                  width: 150,
                  height: 70,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                      },
                      child: Center(child: Text('Leçon 9')),
                    ),
                  ),
                ),

                //),
              ],
            ),
// --- Ligne 4 ---------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //Expanded(

                //),

                //Expanded(
                SizedBox(
                  width: 150,
                  height: 70,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                      },
                      child: Center(child: Text('Leçon 10')),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 70,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                      },
                      child: Center(child: Text('Leçon 11')),
                    ),
                  ),
                ),

                SizedBox(
                  width: 150,
                  height: 70,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                      },
                      child: Center(child: Text('Leçon 12')),
                    ),
                  ),
                ),

                //),
              ],
            ),
// --- Ligne 5 ----------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //Expanded(

                //),

                //Expanded(
                SizedBox(
                  width: 150,
                  height: 70,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                      },
                      child: Center(child: Text('Leçon 13')),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 70,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                      },
                      child: Center(child: Text('Leçon 14')),
                    ),
                  ),
                ),

                SizedBox(
                  width: 150,
                  height: 70,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                      },
                      child: Center(child: Text('Leçon 15')),
                    ),
                  ),
                ),

                //),
              ],
            ),
            //------ Ligne 6 -----------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //Expanded(

                //),

                //Expanded(
                SizedBox(
                  width: 150,
                  height: 70,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                      },
                      child: Center(child: Text('Leçon 16')),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 70,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                      },
                      child: Center(child: Text('Leçon 17')),
                    ),
                  ),
                ),

                SizedBox(
                  width: 150,
                  height: 70,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                      },
                      child: Center(child: Text('Leçon 18')),
                    ),
                  ),
                ),

                //),
              ],
            ),

            //------ Ligne 7 ------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //Expanded(

                //),

                //Expanded(
                SizedBox(
                  width: 150,
                  height: 70,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                      },
                      child: Center(child: Text('Leçon 19')),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 70,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                      },
                      child: Center(child: Text('Leçon 20')),
                    ),
                  ),
                ),

                SizedBox(
                  width: 150,
                  height: 70,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                      },
                      child: Center(child: Text('Leçon 21')),
                    ),
                  ),
                ),

                //),
              ],
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
