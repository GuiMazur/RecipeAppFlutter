import 'package:flutter/material.dart';

class LoginInputField extends StatelessWidget {

  final Function(String) onChanged;
  final String label;
  final bool obscuretext;
  
  const LoginInputField({
    Key? key, 
    required this.onChanged, 
    required this.label,
    this.obscuretext = false
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
            decoration: InputDecoration(
              label: Text(label)
            ),
            onChanged: onChanged,
            obscureText: obscuretext,
          );
  }
}