import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projets/alphabet.dart';
import 'package:projets/ardoise.dart';
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
import 'package:projets/lecon46.dart';
import 'package:projets/lecon47.dart';
import 'package:projets/lecon48.dart';
import 'package:projets/lecon49.dart';
import 'package:projets/lecon52.dart';
import 'package:projets/lecon54.dart';
import 'package:projets/lecon55.dart';
import 'package:projets/lecon56.dart';
import 'package:projets/lecon57.dart';
import 'package:projets/lecon59.dart';
import 'package:projets/lecon60.dart';
import 'package:projets/lecon61.dart';
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

import 'package:projets/lecon42.dart';
import 'package:projets/lecon44.dart';

import 'package:projets/lecon5.dart';
import 'package:projets/lecon50.dart';
import 'package:projets/lecon53.dart';
import 'package:projets/lecon6.dart';
import 'package:projets/lecon62.dart';
import 'package:projets/lecon64.dart';
import 'package:projets/lecon65.dart';
import 'package:projets/lecon7.dart';
import 'package:projets/lecon8.dart';
import 'package:projets/lecon9.dart';
import 'package:projets/exercice1_lit.dart';
import 'package:projets/exercice2_lit.dart';
import 'package:projets/exercice3_lit.dart';
import 'package:projets/leconPrealpha.dart';
import 'package:projets/menu.dart';
import 'package:projets/adminlogin.dart';
import 'package:projets/menuEvaluation.dart';
import 'package:projets/menulecon.dart';
import 'package:projets/register.dart';
import 'package:projets/resultat.dart';
import 'package:projets/update.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wakelock/wakelock.dart';

import 'appBlocked.dart';

import 'exercice1_num.dart';
import 'exercice2_num.dart';
import 'exercice3_num.dart';
import 'exercice4_num.dart';

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
import 'lecon43.dart';
import 'lecon51.dart';
import 'lecon58.dart';
import 'lecon66.dart';
import 'lecon67.dart';

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
  late Timer _timer;
  bool _appEnabled = false;

  String accessBlocked = '';

  void bloquer() async {
    final DateTime deadline = DateTime(2023, 6, 01);

    Timer.periodic(Duration(seconds: 1), (timer) {
      if (DateTime.now().isAfter(deadline)) {
        timer.cancel();
        setState(() {
          _appEnabled = true;
          accessBlocked = 'oui'; // Stocke la chaîne "oui" dans la variable
        });
      }
      // else if (DateTime.now().isBefore(deadline)) {
      //   setState(() {
      //     accessBlocked =
      //         'non'; // Stocke la chaîne "non" dans la variable pour bloquer l'accès
      //   });
      // }
    });
  }

  @override
  void initState() {
    super.initState();
    bloquer();
    //checkBlock();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
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
        //ROUTE DES EXERCICES
        '/exercice1_lit': (context) => Exercice1_lit(title: ''),
        '/exercice2_lit': (context) => Exercice2_lit(title: ''),
        '/exercice3_lit': (context) => Exercice3_lit(title: ''),
        '/exercice1_num': (context) => Exercice1_num(title: ''),
        '/exercice2_num': (context) => Exercice2_num(title: ''),
        '/exercice3_num': (context) => Exercice3_num(title: ''),
        '/exercice4_num': (context) => Exercice4_num(title: ''),
        '/resultat': (context) => Resultat(title: ''),

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
        '/lecon41': (context) => Lecon41(
              title: '',
            ),
        '/lecon42': (context) => Lecon42(
              title: '',
            ),
        '/lecon43': (context) => Lecon43(
              title: '',
            ),
        '/lecon44': (context) => Lecon44(
              title: '',
            ),
        '/lecon45': (context) => Lecon45(
              title: '',
            ),
        '/lecon46': (context) => Lecon46(
              title: '',
            ),
        '/lecon47': (context) => Lecon47(
              title: '',
            ),
        '/lecon48': (context) => Lecon48(
              title: '',
            ),
        '/lecon49': (context) => Lecon49(
              title: '',
            ),
        '/lecon50': (context) => Lecon50(
              title: '',
            ),
        '/lecon51': (context) => Lecon51(
              title: '',
            ),
        '/lecon52': (context) => Lecon52(
              title: '',
            ),
        '/lecon53': (context) => Lecon53(
              title: '',
            ),
        '/lecon54': (context) => Lecon54(
              title: '',
            ),
        '/lecon55': (context) => Lecon55(
              title: '',
            ),
        '/lecon56': (context) => Lecon56(
              title: '',
            ),
        '/lecon57': (context) => Lecon57(
              title: '',
            ),
        '/lecon58': (context) => Lecon58(
              title: '',
            ),
        '/lecon59': (context) => Lecon59(
              title: '',
            ),
        '/lecon60': (context) => Lecon60(
              title: '',
            ),
        '/lecon61': (context) => Lecon61(
              title: '',
            ),
        '/lecon62': (context) => Lecon62(
              title: '',
            ),
        '/lecon63': (context) => Lecon63(
              title: '',
            ),
        '/lecon64': (context) => Lecon64(
              title: '',
            ),
        '/lecon65': (context) => Lecon65(
              title: '',
            ),
        '/lecon66': (context) => Lecon66(
              title: '',
            ),
        '/lecon67': (context) => Lecon67(
              title: '',
            ),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: _appEnabled
          ? accessBlocked == 'oui'
              ? appBlocked()
              : MyHomePage(
                  title: '',
                )
          : accessBlocked == 'non'
              ? appBlocked()
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

  late Timer _timer;
  bool _appEnabled = true;

  StarCount() {
    Future.delayed(Duration(seconds: 10), () {
      setState(() {
        TheLogo = 'assets/mtn/accueil.png';
      });
      !_appEnabled
          ? Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => appBlocked()))
          : Navigator.pushReplacementNamed(context, '/menu');
    });
  }

  void initState() {
    super.initState();
    final DateTime deadline = DateTime(2023, 6, 1);
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (DateTime.now().isAfter(deadline)) {
        timer.cancel();
        setState(() {
          _appEnabled = false;
        });
      }
    });
    setState(() {
      TheLogo = 'assets/mtn/accueil.png';
    });
    StarCount();
    retrieveCounter();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
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
          Navigator.pushReplacementNamed(context, '/adminlogin');
        },
        backgroundColor: Colors.limeAccent,
        child: const Icon(Icons.settings),
      ),
    );
  }
}
