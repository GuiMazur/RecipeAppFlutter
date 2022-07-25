import 'package:flutter/material.dart';
import 'package:test1/content/login_content/button_login_component.dart';
import 'package:test1/controller/login_controller.dart';
import 'package:test1/widgets/login_page_widgets/login_input_field_widget.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final LoginController _controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.people, size: MediaQuery.of(context).size.height * 0.2,),
            LoginInputField(onChanged: _controller.setUser, label: 'User'),
            LoginInputField(onChanged: _controller.setPass, label: 'Password', obscuretext: true,),
            ButtonLoginComponent(loginController: _controller,),
          ],
        ),
      ),
    );
  }
}