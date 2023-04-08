import 'package:flutter/material.dart';


class appBlocked extends StatelessWidget {
  const appBlocked({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'L\'application est désactivée. Période d\'utilisation atteinte !',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.red),
        ),
      ),
    );
  }
}
