import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'get_movies_controller.dart';


class Movies extends StatefulWidget {
  const Movies({Key? key}) : super(key: key);

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {

  final MoviesController _controller = MoviesController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: ([
            Color.fromARGB(0, 16, 45, 113),
            Color.fromARGB(130, 0, 0, 0),
            Color.fromARGB(255, 193, 42, 35),
          ]
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ValueListenableBuilder(
                valueListenable: _controller.name,
                builder: (_, value, __) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.0),
                    child: SizedBox(
                      child: Text(
                        _controller.name.value,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.merriweatherSans(
                          color: Colors.white,
                          textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25.0,
                          ),
                        ),
                      ),
                    ),
                  );
                }
              ),
              ElevatedButton.icon(
                onPressed: (() => _controller.callAPI()),
                icon: Icon(Icons.shuffle),
                label: Text(
                  'Gerar nome de filme',
                  style: GoogleFonts.merriweatherSans(),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 150, 0, 10)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20.0, color: Colors.white)),
                  fixedSize: MaterialStateProperty.all(Size.fromHeight(80.0)),
                ),
              )
            ]
          ),
        ),
      ),
    );
    
  }
}