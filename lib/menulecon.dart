import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projets/lecon1.dart';
import 'package:projets/infosymbol.dart';
import 'package:projets/lecon3.dart';
import 'package:projets/lecon2.dart';
import 'package:projets/lecon4.dart';
import 'package:projets/lecon5.dart';

extension ColorExtension on String {
  toColor5() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class MenuLecon extends StatefulWidget {
  const MenuLecon({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MenuLecon> createState() => _MenuLeconState();
}

class _MenuLeconState extends State<MenuLecon> {
  int _counter = 0;
  late PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller = PageController(
      initialPage: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: '#fcca0c'.toColor2(),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 50,
        backgroundColor: '#fcca0c'.toColor5(),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          widget.title + 'Les leçons ',
          style:
              TextStyle(color: Color(0xff000000), fontStyle: FontStyle.italic),
        ),
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
      ),
      body: PageView(
        controller: _controller,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/prealpha');
                          //print("tapped");
                        },
                        child: Center(child: Text('Pré-alpha')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon1');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 1')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon2');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 2')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon3');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 3')),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon4');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 4')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // // Navigator.pushNamed(context, '/lecon1');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon5');
                        },
                        child: Center(child: Text('Leçon 5')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // // Navigator.pushNamed(context, '/lecon1');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon6');
                        },
                        child: Center(child: Text('Leçon 6')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon7');
                        },
                        child: Center(child: Text('Leçon 7')),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // // Navigator.pushNamed(context, '/lecon1');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon8');
                        },
                        child: Center(child: Text('Leçon 8')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // // Navigator.pushNamed(context, '/lecon1');
                          // //print("tapped");
                          Navigator.pushNamed(context, '/lecon9');
                        },
                        child: Center(child: Text('Leçon 9')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon10');
                        },
                        child: Center(child: Text('Leçon 10')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // // Navigator.pushNamed(context, '/lecon1');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon11');
                        },
                        child: Center(child: Text('Leçon 11')),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // // Navigator.pushNamed(context, '/lecon1');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon12');
                        },
                        child: Center(child: Text('Leçon 12')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, '/lecon1');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon13');
                        },
                        child: Center(child: Text('Leçon 13')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, '/lecon1');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon14');
                        },
                        child: Center(child: Text('Leçon 14')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon15');
                        },
                        child: Center(child: Text('Leçon 15')),
                      ),
                    ),
                  ),
                ],
              ),

              // ),
            ],
          ),
          //liste 2
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon16');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon16');
                        },
                        child: Center(child: Text('leçon 16')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, '/lecon1');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon17');
                        },
                        child: Center(child: Text('Leçon 17')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, '/lecon2');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon18');
                        },
                        child: Center(child: Text('Leçon 18')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, '/lecon3');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon19');
                        },
                        child: Center(child: Text('Leçon 19')),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, '/lecon4');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon20');
                        },
                        child: Center(child: Text('Leçon 20')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // // Navigator.pushNamed(context, '/lecon1');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon21');
                        },
                        child: Center(child: Text('Leçon 21')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    // child: Card(
                    //   child: new InkWell(
                    //     onTap: () {
                    //       // // Navigator.pushNamed(context, '/lecon1');
                    //       //print("tapped");
                    //     },
                    //     child: Center(child: Text('Leçon 6')),
                    //   ),
                    // ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    // child: Card(
                    //   child: new InkWell(
                    //     onTap: () {
                    //       // // Navigator.pushNamed(context, '/lecon1');
                    //       //print("tapped");
                    //     },
                    //     child: Center(child: Text('Leçon 7')),
                    //   ),
                    // ),
                  ),
                  //   ],
                  // ),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     SizedBox(
                  //       width: 150,
                  //       height: 60,
                  //       child: Card(
                  //         child: new InkWell(
                  //           onTap: () {
                  //             // // Navigator.pushNamed(context, '/lecon1');
                  //             //print("tapped");
                  //           },
                  //           child: Center(child: Text('Leçon 8')),
                  //         ),
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 150,
                  //       height: 60,
                  //       child: Card(
                  //         child: new InkWell(
                  //           onTap: () {
                  //             // // Navigator.pushNamed(context, '/lecon1');
                  //             // //print("tapped");
                  //           },
                  //           child: Center(child: Text('Leçon 9')),
                  //         ),
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 150,
                  //       height: 60,
                  //       child: Card(
                  //         child: new InkWell(
                  //           onTap: () {
                  //             // // Navigator.pushNamed(context, '/lecon1');
                  //             //print("tapped");
                  //           },
                  //           child: Center(child: Text('Leçon 10')),
                  //         ),
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 150,
                  //       height: 60,
                  //       child: Card(
                  //         child: new InkWell(
                  //           onTap: () {
                  //             // // Navigator.pushNamed(context, '/lecon1');
                  //             //print("tapped");
                  //           },
                  //           child: Center(child: Text('Leçon 11')),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     SizedBox(
                  //       width: 150,
                  //       height: 60,
                  //       child: Card(
                  //         child: new InkWell(
                  //           onTap: () {
                  //             // // Navigator.pushNamed(context, '/lecon1');
                  //             //print("tapped");
                  //           },
                  //           child: Center(child: Text('Leçon 12')),
                  //         ),
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 150,
                  //       height: 60,
                  //       child: Card(
                  //         child: new InkWell(
                  //           onTap: () {
                  //             // Navigator.pushNamed(context, '/lecon1');
                  //             //print("tapped");
                  //           },
                  //           child: Center(child: Text('Leçon 13')),
                  //         ),
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 150,
                  //       height: 60,
                  //       child: Card(
                  //         child: new InkWell(
                  //           onTap: () {
                  //             // Navigator.pushNamed(context, '/lecon1');
                  //             //print("tapped");
                  //           },
                  //           child: Center(child: Text('Leçon 14')),
                  //         ),
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 150,
                  //       height: 60,
                  //       child: Card(
                  //         child: new InkWell(
                  //           onTap: () {
                  //             // Navigator.pushNamed(context, '/lecon1');
                  //             //print("tapped");
                  //           },
                  //           child: Center(child: Text('Leçon 15')),
                  //         ),
                  //       ),
                  //     ),
                ],
              ),

              // ),
            ],
          ),
        ],
      ),
//
//
// SingleChildScrollView(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.

//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
// // --- Ligne  1 -------------
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 // Expanded(
//                 SizedBox(
//                   width: 150,
//                   height: 60,
//                   child: Card(
//                     child: new InkWell(
//                       onTap: () {
// //                         Navigator.pushNamed(context, '/lecon1');
//                         //print("tapped");
//                       },
//                       child: Center(child: Text('Leçon 1')),
//                     ),
//                   ),
//                 ),
//                 // ),
//                 // Expanded(
//                 SizedBox(
//                   width: 150,
//                   height: 60,
//                   child: Card(
//                     child: new InkWell(
//                       onTap: () {
//                         Navigator.pushNamed(context, '/lecon2');
//                         print("tapped");
//                       },
//                       child: Center(child: Text('Leçon 2')),
//                     ),
//                   ),
//                 ),

//                 SizedBox(
//                   width: 150,
//                   height: 60,
//                   child: Card(
//                     child: new InkWell(
//                       onTap: () {
//                         Navigator.pushNamed(context, '/lecon3');
//                         // print("tapped");
//                       },
//                       child: Center(child: Text('Leçon 3')),
//                     ),
//                   ),
//                 ),

//                 // ),
//               ],
//             ),
//             // --- Ligne  2 -------------
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 //Expanded(

//                 //),

//                 //Expanded(
//                 SizedBox(
//                   width: 150,
//                   height: 60,
//                   child: Card(
//                     child: new InkWell(
//                       onTap: () {
//                         Navigator.pushNamed(context, '/lecon4');
//                         // print("tapped");
//                       },
//                       child: Center(child: Text('Leçon 4')),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 150,
//                   height: 60,
//                   child: Card(
//                     child: new InkWell(
//                       onTap: () {
//                         Navigator.pushNamed(context, '/lecon5');
//                         // print("tapped");
//                       },
//                       child: Center(child: Text('Leçon 5')),
//                     ),
//                   ),
//                 ),

//                 SizedBox(
//                   width: 150,
//                   height: 60,
//                   child: Card(
//                     child: new InkWell(
//                       onTap: () {
//                         print("tapped");
//                       },
//                       child: Center(child: Text('Leçon 6')),
//                     ),
//                   ),
//                 ),

//                 //),
//               ],
//             ),
//             //--- Ligne 3 ----------------
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 //Expanded(

//                 //),

//                 //Expanded(
//                 SizedBox(
//                   width: 150,
//                   height: 60,
//                   child: Card(
//                     child: new InkWell(
//                       onTap: () {
//                         print("tapped");
//                       },
//                       child: Center(child: Text('Leçon 7')),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 150,
//                   height: 60,
//                   child: Card(
//                     child: new InkWell(
//                       onTap: () {
//                         print("tapped");
//                       },
//                       child: Center(child: Text('Leçon 8')),
//                     ),
//                   ),
//                 ),

//                 SizedBox(
//                   width: 150,
//                   height: 60,
//                   child: Card(
//                     child: new InkWell(
//                       onTap: () {
//                         print("tapped");
//                       },
//                       child: Center(child: Text('Leçon 9')),
//                     ),
//                   ),
//                 ),

//                 //),
//               ],
//             ),
// // --- Ligne 4 ---------------------
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 //Expanded(

//                 //),

//                 //Expanded(
//                 SizedBox(
//                   width: 150,
//                   height: 60,
//                   child: Card(
//                     child: new InkWell(
//                       onTap: () {
//                         print("tapped");
//                       },
//                       child: Center(child: Text('Leçon 10')),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 150,
//                   height: 60,
//                   child: Card(
//                     child: new InkWell(
//                       onTap: () {
//                         print("tapped");
//                       },
//                       child: Center(child: Text('Leçon 11')),
//                     ),
//                   ),
//                 ),

//                 SizedBox(
//                   width: 150,
//                   height: 60,
//                   child: Card(
//                     child: new InkWell(
//                       onTap: () {
//                         print("tapped");
//                       },
//                       child: Center(child: Text('Leçon 12')),
//                     ),
//                   ),
//                 ),

//                 //),
//               ],
//             ),
// // --- Ligne 5 ----------------
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 //Expanded(

//                 //),

//                 //Expanded(
//                 SizedBox(
//                   width: 150,
//                   height: 60,
//                   child: Card(
//                     child: new InkWell(
//                       onTap: () {
//                         print("tapped");
//                       },
//                       child: Center(child: Text('Leçon 13')),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 150,
//                   height: 60,
//                   child: Card(
//                     child: new InkWell(
//                       onTap: () {
//                         print("tapped");
//                       },
//                       child: Center(child: Text('Leçon 14')),
//                     ),
//                   ),
//                 ),

//                 SizedBox(
//                   width: 150,
//                   height: 60,
//                   child: Card(
//                     child: new InkWell(
//                       onTap: () {
//                         print("tapped");
//                       },
//                       child: Center(child: Text('Leçon 15')),
//                     ),
//                   ),
//                 ),

//                 //),
//               ],
//             ),
//             //------ Ligne 6 -----------------
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 //Expanded(

//                 //),

//                 //Expanded(
//                 SizedBox(
//                   width: 150,
//                   height: 60,
//                   child: Card(
//                     child: new InkWell(
//                       onTap: () {
//                         print("tapped");
//                       },
//                       child: Center(child: Text('Leçon 16')),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 150,
//                   height: 60,
//                   child: Card(
//                     child: new InkWell(
//                       onTap: () {
//                         print("tapped");
//                       },
//                       child: Center(child: Text('Leçon 17')),
//                     ),
//                   ),
//                 ),

//                 SizedBox(
//                   width: 150,
//                   height: 60,
//                   child: Card(
//                     child: new InkWell(
//                       onTap: () {
//                         print("tapped");
//                       },
//                       child: Center(child: Text('Leçon 18')),
//                     ),
//                   ),
//                 ),

//                 //),
//               ],
//             ),

//             //------ Ligne 7 ------------------
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 //Expanded(

//                 //),

//                 //Expanded(
//                 SizedBox(
//                   width: 150,
//                   height: 60,
//                   child: Card(
//                     child: new InkWell(
//                       onTap: () {
//                         print("tapped");
//                       },
//                       child: Center(child: Text('Leçon 19')),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 150,
//                   height: 60,
//                   child: Card(
//                     child: new InkWell(
//                       onTap: () {
//                         print("tapped");
//                       },
//                       child: Center(child: Text('Leçon 20')),
//                     ),
//                   ),
//                 ),

//                 SizedBox(
//                   width: 150,
//                   height: 60,
//                   child: Card(
//                     child: new InkWell(
//                       onTap: () {
//                         print("tapped");
//                       },
//                       child: Center(child: Text('Leçon 21')),
//                     ),
//                   ),
//                 ),

//                 //),
//               ],
//             ),
//           ],
//         ),
//       ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
