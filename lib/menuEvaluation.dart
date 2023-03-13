import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ColorExtension on String {
  toColor14() {
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

  final pointLit = TextEditingController();
  final pointNum = TextEditingController();
  final pointSym = TextEditingController();
  String thereponse = "";

  //---- Enregistrer un elve ----
  Future senddata(String litte, String nume, String symb) async {
    Navigator.pushReplacementNamed(context, '/menu');
  }

  

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: '#fcca0c'.toColor2(),
      appBar: AppBar(
        centerTitle: true,
        // toolbarHeight: 80,
        backgroundColor: '#fcca0c'.toColor14(),
        title: Text(
          widget.title + 'Attribution de notes',
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
                //Expanded(

                //),
                Column(
                  
                  children: [
                    Text(
                      'Littératie',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [                        
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                height: 60,
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  controller: pointLit,
                                  keyboardType: TextInputType.number,
                                  obscureText: false,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 25,
                                    fontFamily: 'Poppins',
                                  ),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'note',
                                  ),
                                ),
                              ),
                              Text(
                                ' / 10',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ]
                          ),
                        ],
                    ),
                  ],
                ),
                Column(
                  
                  children: [
                    Text(
                      'Numératie',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [                        
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                height: 60,
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  controller: pointNum,
                                  keyboardType: TextInputType.number,
                                  obscureText: false,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 25,
                                    fontFamily: 'Poppins',
                                  ),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'note',
                                  ),
                                ),
                              ),
                              Text(
                                ' / 10',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ]
                          ),
                        ],
                    ),
                  ],
                ),
                Column(
                  
                  children: [
                    Text(
                      'Symbole',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [                        
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                height: 60,
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  controller: pointSym,
                                  keyboardType: TextInputType.number,
                                  obscureText: false,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 25,
                                    fontFamily: 'Poppins',
                                  ),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'note',
                                  ),
                                ),
                              ),
                              Text(
                                ' / 10',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ]
                          ),
                        ],
                    ),
                  ],
                ),
              
              ],
            ),
            SizedBox(
                
                height: 40,
            ),
            //------ Ligne 2 ------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                    width: 300,
                    height: 60,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: '#fcca0c'.toColor14(),
                      ),
                      onPressed: () {
                        senddata(pointLit.text,pointNum.text,pointSym.text);
                      },
                      child: Text(
                        'Enrégistrer',
                        style: TextStyle(
                            fontSize: 25,
                            color: CupertinoColors.darkBackgroundGray),
                      ),
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
