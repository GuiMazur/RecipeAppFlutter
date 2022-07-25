import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MealBox extends StatelessWidget {
  final String routeName;
  final String title;
  final Color color;
  const MealBox({
    Key? key,
    required this.title,
    required this.color, 
    required this.routeName,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ElevatedButton(
        onPressed:() {
          Navigator.of(context).pushNamed(routeName); 
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          fixedSize: MaterialStateProperty.all(Size(170, 100)),
          padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(0, 25.0, 20.0, 0)),
          textStyle: MaterialStateProperty.all(TextStyle(color: Colors.white, fontSize: 15.0)),
        ),
        child: Align(
          alignment: Alignment.topRight,
          child: Text(title)
        ),
      ),
    );
  }
}