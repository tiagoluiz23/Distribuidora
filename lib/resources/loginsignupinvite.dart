import 'package:app_dist_ita/view/signin.dart';
import 'package:flutter/material.dart';

class LoginSignUpInvite extends StatefulWidget {
  const LoginSignUpInvite({super.key});

  @override
  State<LoginSignUpInvite> createState() => _LoginSignUpInviteState();
}

class _LoginSignUpInviteState extends State<LoginSignUpInvite> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
/****************LINHA DIVIDER ******************************************* */
        const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Divider(color: Colors.black),
        ),
/*****************TEXTO AINDA NÃO É CADASTRADO************************* */
        const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Text(
            "Ainda não é cadastrado?",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),

/***************BOTAO  CADASTRAR********************************** */
        ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => const SignIn())));
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                Colors.yellow),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                side: const BorderSide(width: 0.2, color: Colors.black),
              ),
            ),
          ),
          child: const Text(
            "Cadastre-se",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
