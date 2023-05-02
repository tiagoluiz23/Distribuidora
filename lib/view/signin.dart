import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  setFullScreen() {
    //Função Full screen
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Cadastre-se",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Arial",
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.amber[400],
        leadingWidth: 60,
        leading: const Icon(Icons.arrow_back_ios_new),
      ),

      body: Column(
        children: const [
          Text("data"),
        ],
      ),
    );
  }
}
