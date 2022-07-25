import 'package:flutter/material.dart';
import 'package:test1/controller/login_controller.dart';

class ButtonLoginComponent extends StatelessWidget {

  final LoginController loginController;
  const ButtonLoginComponent({Key? key, required this.loginController}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
            valueListenable: loginController.inloader,
            builder: (_, inloader, ___) {
              return loginController.inloader.value
              ?Padding(
                padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 0.0),
                child: CircularProgressIndicator(),
              )
              :Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 0.0),
                child: ElevatedButton(
                  onPressed: () {loginController.auth().then((result) {
                    if (result) {
                      Navigator.of(context).pushReplacementNamed('/');
                    } else {                    
                      showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                          title: Center(child: const Text('AlertDialog Title')),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: const <Widget>[
                                Center(child: Text('User/password incorrect.')),
                              ],
                            ),
                          ),
                          contentPadding: EdgeInsets.only(top: 20.0),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                          actionsAlignment: MainAxisAlignment.center,
                        )
                      );
                    }
                  }
                  );
                  },
                  child: Text('Login')
                ),
              );
            }
          );
  }
}