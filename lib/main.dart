import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'package:projets/alphabet.dart';
import 'package:projets/ardoise.dart';
import 'package:projets/blocage_app.dart';
import 'package:projets/connexion_Evaluation.dart';
import 'package:projets/dashboard.dart';
import 'package:projets/ecrire.dart';
import 'package:projets/infosymbol.dart';
import 'package:projets/lecon11.dart';
import 'package:projets/lecon12.dart';
import 'package:projets/lecon13.dart';
import 'package:projets/lecon14.dart';
import 'package:projets/lecon16.dart';
import 'package:projets/lecon17.dart';
import 'package:projets/lecon18.dart';
import 'package:projets/lecon19.dart';
import 'package:projets/lecon20.dart';
import 'package:projets/lecon21.dart';
import 'package:projets/lecon22.dart';
import 'package:projets/lecon31.dart';
import 'package:projets/lecon32.dart';

import 'package:projets/lecon33.dart';
import 'package:projets/lecon34.dart';
import 'package:projets/lecon37.dart';
import 'package:projets/lecon38.dart';

import 'package:projets/lecon41.dart';
import 'package:projets/lecon45.dart';
import 'package:projets/lecon49.dart';
import 'package:projets/lecon54.dart';
import 'package:projets/lecon57.dart';
import 'package:projets/lecon63.dart';

// import 'package:projets/lecon41.dart';
// import 'package:projets/lecon45.dart';

import 'package:projets/lecon23.dart';
import 'package:projets/lecon26.dart';
import 'package:projets/lecon27.dart';
import 'package:projets/lecon28.dart';
import 'package:projets/lecon29.dart';
import 'package:projets/lecon39.dart';
import 'package:projets/lecon40.dart';


import 'package:projets/lecon5.dart';
import 'package:projets/lecon6.dart';
import 'package:projets/lecon7.dart';
import 'package:projets/lecon8.dart';
import 'package:projets/lecon9.dart';
import 'package:projets/leconPrealpha.dart';
import 'package:projets/menu.dart';
import 'package:projets/adminlogin.dart';
import 'package:projets/menuEvaluation.dart';
import 'package:projets/menulecon.dart';
import 'package:projets/register.dart';
import 'package:projets/update.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wakelock/wakelock.dart';
import 'lecon1.dart';
import 'lecon10.dart';
import 'lecon15.dart';
import 'lecon2.dart';
import 'lecon24.dart';
import 'lecon25.dart';
import 'lecon3.dart';
import 'lecon30.dart';
import 'lecon35.dart';
import 'lecon36.dart';
import 'lecon4.dart';
import 'lecon51.dart';

extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isBlocked = false;

  @override
  void initState() {
    super.initState();
    checkBlock();
  }

  void checkBlock() async {
    final response =
        await http.get(Uri.parse('https://s-p4.com/yello/bloque.php'));
    if (response.statusCode == 200) {
      final dateBlocage =
          DateTime.parse(jsonDecode(response.body)['date_blocage']);
      final now = DateTime.now();
      setState(() {
        _isBlocked = now.isAfter(dateBlocage);
      });
    } else {
      throw Exception('Erreur lors de la récupération de la date');
    }
  }

  @override
  Widget build(BuildContext context) {
    Wakelock.enable();
    // Set landscape orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/main': (context) => MyApp(),
        '/menu': (context) => MenuApp(title: ''),
        '/adminlogin': (context) => AdminLogin(title: ''),
        '/infosymbol': (context) => InfoSymbol(title: ''),
        '/ardoise': (context) => Ardoise(title: ''),
        '/ecrire': (context) => Ecrire(title: ''),
        '/menulecon': (context) => MenuLecon(title: ''),
        '/prealpha': (context) => PreAlpha(title: ''),
        '/alphabet': (context) => Alphabet(title: ''),
        '/menuEva': (context) => MenuEvaluation(title: ''),
        '/update': (context) => UpdateApp(title: ''),
        '/register': (context) => Register(title: ''),
        '/dashboard': (context) => Dashboard(
              title: '',
              utilisation: 0,
            ),
        '/connexionEvaluation': (context) => ConnexionEva(
              title: '',
            ),
        '/lecon1': (context) => Lecon1(title: ''),
        '/lecon2': (context) => Lecon2(title: ''),
        '/lecon3': (context) => Lecon3(),
        '/lecon4': (context) => Lecon4(title: ''),
        '/lecon5': (context) => Lecon5(title: ''),
        '/lecon6': (context) => Lecon6(
              title: '',
            ),
        '/lecon7': (context) => Lecon7(
              title: '',
            ),
        '/lecon8': (context) => Lecon8(
              title: '',
            ),
        '/lecon9': (context) => Lecon9(
              title: '',
            ),
        '/lecon10': (context) => Lecon10(
              title: '',
            ),
        '/lecon11': (context) => Lecon11(
              title: '',
            ),
        '/lecon12': (context) => Lecon12(
              title: '',
            ),
        '/lecon13': (context) => Lecon13(
              title: '',
            ),
        '/lecon14': (context) => Lecon14(
              title: '',
            ),
        '/lecon15': (context) => Lecon15(
              title: '',
            ),
        '/lecon16': (context) => Lecon16(
              title: '',
            ),
        '/lecon17': (context) => Lecon17(
              title: '',
            ),
        '/lecon18': (context) => Lecon18(
              title: '',
            ),
        '/lecon19': (context) => Lecon19(
              title: '',
            ),
        '/lecon20': (context) => Lecon20(
              title: '',
            ),
        '/lecon21': (context) => Lecon21(
              title: '',
            ),
        '/lecon22': (context) => Lecon22(
              title: '',
            ),
        '/lecon23': (context) => Lecon23(
              title: '',
            ),
        '/lecon24': (context) => Lecon24(
              title: '',
            ),
        '/lecon25': (context) => Lecon25(
              title: '',
            ),
        '/lecon26': (context) => Lecon26(
              title: '',
            ),
        '/lecon27': (context) => Lecon27(
              title: '',
            ),
        '/lecon28': (context) => Lecon28(
              title: '',
            ),
        '/lecon29': (context) => Lecon29(
              title: '',
            ),
        '/lecon30': (context) => Lecon30(
              title: '',
            ),
        '/lecon31': (context) => Lecon31(
              title: '',
            ),
        '/lecon32': (context) => Lecon32(
              title: '',
            ),
        '/lecon33': (context) => Lecon33(
              title: '',
            ),
        '/lecon34': (context) => Lecon34(
              title: '',
            ),
        '/lecon35': (context) => Lecon35(
              title: '',
            ),
        '/lecon36': (context) => Lecon36(
              title: '',
            ),
        '/lecon37': (context) => Lecon37(
              title: '',
            ),
        '/lecon38': (context) => Lecon38(
              title: '',
            ),
        '/lecon39': (context) => Lecon39(
              title: '',
            ),
        '/lecon40': (context) => Lecon40(
              title: '',
            ),

        '/lecon49': (context) => Lecon49(
              title: '',
            ),
        '/lecon54': (context) => Lecon54(
              title: '',
            ),
        '/lecon57': (context) => Lecon57(
              title: '',
            ),
        '/lecon63': (context) => Lecon63(
              title: '',
            )

        // '/lecon51': (context) => Lecon51(
        //       title: '',
        //     ),

      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: _isBlocked
          ? MyBlocage()
          : MyHomePage(
              title: '',
            ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Color Newcolor = const Color('0xFFffce00');
  int CountIndex = 0;
  String TheLogo = '';
  late SharedPreferences preference;
  int counterInt = 0;

  StarCount() {
    Future.delayed(Duration(seconds: 10), () {
      setState(() {
        TheLogo = 'assets/mtn/accueil.png';
      });
      Navigator.pushReplacementNamed(context, '/menu');
    });
  }

  void initState() {
    //super.initState();
    //GetLogoPart();//call it over here
    setState(() {
      TheLogo = 'assets/mtn/accueil.png';
    });
    StarCount();
    retrieveCounter();
  }

  Future retrieveCounter() async {
    preference = await SharedPreferences.getInstance();
    int? counterInt = preference.getInt('counter');
    if (counterInt == null) return;
    setState(() {
      this.counterInt = counterInt;
      print('Hello avant');
      addCounter();
    });
  }

  Future addCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var a = MyApp();
    if (a != null) {
      this.counterInt = this.counterInt + 1;
      prefs.setInt('counter', this.counterInt);
      // addCounter(this.counterInt);
      print(this.counterInt);
      print('Hello');
    }
  }

  @override
  Widget build(BuildContext context) {
    addCounter();
    return Scaffold(
      backgroundColor: '#fcca0c'.toColor(),
      body: Center(
        child: Image(
          image: AssetImage(TheLogo),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!

          Navigator.pushReplacementNamed(context, '/adminlogin');
        },
        backgroundColor: Colors.limeAccent,
        child: const Icon(Icons.settings),
      ),
    );
  }
}
