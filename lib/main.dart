import 'package:flutter/material.dart';
import 'package:test1/views/login_page.dart';
import 'package:test1/views/category_recipes_page.dart';
import 'package:test1/views/settings_page.dart';
import 'package:test1/views/home_page.dart';
import 'package:test1/stuff/splash_init_page.dart';
import 'package:test1/stuff/movies.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splash',
      routes:{
      '/splash':(context) => SplashPage(),
      '/loginpage':(context) => LoginPage(),
      '/' : (context) => const HomePage(),
      '/configuracoes' : (context) => const Configuracoes(),
      '/movies' : (context) => const  Movies(),
      '/categoryrecipespage' :(context) => CategoryRecipesPage()
      }
    );
  }
}