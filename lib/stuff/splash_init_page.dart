import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {

  SplashPage({Key? key}) : super(key: key);

  @override

  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3)).then(
      (_) => Navigator.of(context).pushReplacementNamed('/loginpage'),
    );
  }

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