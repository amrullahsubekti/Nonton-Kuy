import 'package:bwa_flutix/services/services.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                RaisedButton(
                    child: Text('Sign Up'),
                    onPressed: () async {
                      SignInSignUpResult result = await AuthServices.signUp(
                          "amrullah167@gmail.com",
                          "123456",
                          "Amrul",
                          ["Action", "Horror", "Music", "Drama"],
                          "English");

                      if (result.user == null) {
                        print(result.message);
                      } else {
                        print(result.user.toString());
                      }
                    }),
                RaisedButton(
                    child: Text('Sign In'),
                    onPressed: () async {
                      SignInSignUpResult result = await AuthServices.signIn(
                        "amrullah167@gmail.com",
                        "123457",
                      );

                      if (result.user == null) {
                        print(result.message);
                      } else {
                        print(result.user.toString());
                      }
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
