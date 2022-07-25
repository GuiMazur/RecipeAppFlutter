import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashTransition extends StatelessWidget {
  const SplashTransition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 0, 0, 0),
      child: Center(
        child: CircularProgressIndicator(
          color: Color.fromARGB(255, 100, 0, 0),
        )
      ),
    );
  }
}