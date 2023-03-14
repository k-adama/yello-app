import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
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

  final pointLit = TextEditingController(text: '0');
  final pointNum = TextEditingController(text: '0');
  final pointSym = TextEditingController(text: '0');
  String thereponse = "";
  late SharedPreferences preferences;
  String theid = "";
   Future init() async {
    preferences = await SharedPreferences.getInstance();
    String? id = preferences.getString('id') ?? 'no data';
    // CheckConfig();
    GetStudentData(
        id);
  }

  void Clean() {
    pointLit.clear();
    pointNum.clear();
     pointSym.clear();
    // Navigator.pushReplacementNamed(context, '/dashboard');
  }
  //---- Enregistrer un elve ----0

  Future senddata() async {
    thereponse = "";
    final response = await http
        .post(Uri.parse("https://s-p4.com/yello/update.php"), body: {
       "identifiant": theid,
       "pointLit": pointLit.text,
       "pointNum": pointNum.text,
       "pointSym": pointSym.text,
    });

  }
  void GetStudentData(String id) {
    setState(() {

      theid = id;
    });
  }

    String? validateInput(String value) {
    if (value.isEmpty) {
      return 'Valeur manquante';
    }
    final n = int.tryParse(value);
    if (n == null) {
      return 'La valeur doit être un nombre';
    }
    if (n > 10) {
      return 'La valeur doit être inférieure ou égale à 10';
    }
    return null;
  }

  @override
  void initState() {
    super.initState();
      init();
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
                                child: TextFormField(
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
                                child: TextFormField(
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
                                child: TextFormField(
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
                       
                  // La saisie est valide
                  final n = int.parse(pointLit.text);
                  final m = int.parse(pointNum.text);
                  final s = int.parse(pointSym.text);
                   
                   if ( n > 10) {
                    showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(

                                content: Text("La note ne doit pas dépasser 10"),
                                actions: [
                                  TextButton(
                                    child: Text("OK", style: TextStyle(
                                      color: Colors.black, fontSize: 20,
                                    ),),
                                   onPressed: () {
                                      
                                        Navigator.of(context).pop();
                                    },
                                  ),

                                ],
                              );
                            },
                   );
              
                } else if( m > 10) {
                    showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(

                                content: Text("La note ne doit pas dépasser 10"),
                                actions: [
                                  TextButton(
                                    child: Text("OK", style: TextStyle(
                                      color: Colors.black, fontSize: 20,
                                    ),),
                                   onPressed: () {
                                      
                                        Navigator.of(context).pop();
                                    },
                                  ),

                                ],
                              );
                            },
                   );
              
                } 
                else if( s > 10) {
                    showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(

                                content: Text("La note ne doit pas dépasser 10"),
                                actions: [
                                  TextButton(
                                    child: Text("OK", style: TextStyle(
                                      color: Colors.black, fontSize: 20,
                                    ),),
                                   onPressed: () {
                                      
                                        Navigator.of(context).pop();
                                    },
                                  ),

                                ],
                              );
                            },
                   );
              
                } 
                else {
                  senddata();
                 Clean();
                   showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(

                                content: Text("La note a bien été enregistrée !"),
                                actions: [
                                  TextButton(
                                    child: Text("OK", style: TextStyle(
                                      color: Colors.black, fontSize: 20,
                                    ),),
                                   onPressed: () {
                                      
                                        Navigator.of(context).pop();
                                        Navigator.pushReplacementNamed(context, '/menu');
                                    },
                                  ),

                                ],
                              );
                            },
                   );
                    
                  // print(theid);
                
                }
                        
                      
                        // senddata(pointLit.text,pointNum.text,pointSym.text);
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
