import 'package:app_dist_ita/resources/loginform.dart';
import 'package:app_dist_ita/resources/loginsignupinvite.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 100),
        decoration: const BoxDecoration(
          color: Colors.amber,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                "assets/images/splash.png",
                height: 100,
              ),
              
              const Padding(padding: EdgeInsets.only(bottom: 15)),
              const Text(
                "",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const LoginForm(),
              const LoginSignUpInvite(),
            ],
          ),
        ),
      ),
    );
  }
}
