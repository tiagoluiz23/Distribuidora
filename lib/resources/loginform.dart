import 'package:app_dist_ita/resources/loginservice.dart';
import 'package:app_dist_ita/view/home.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _mailInputController = TextEditingController();
  final _passwordInputController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late bool _obscurePassword = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
/********************CAIXA DE TEXTO USUARIO**************************/
          TextFormField(
            validator: (value) {
              if (value!.length < 5) {
                return "Esse e-mail parece curto demais";
              } else if (!value.contains("@")) {
                return "Esse e-mail está meio estranho, não?";
              }
              return null;
            },
            controller: _mailInputController,
            autofocus: true,
            decoration: const InputDecoration(
              labelText: "E-mail",
              labelStyle: TextStyle(
                color: Colors.black,
              ),
              prefixIcon: Icon(
                Icons.mail_outline,
                color: Colors.black,
              ),
              border: UnderlineInputBorder(
                //COR QUANDO NÃO ESTA FOCADO
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                //COR QUANDO ESTA FOCADO
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
          ),

/*******************CAIXA DE TEXTO SENHA************************************* */

          TextFormField(
            validator: (value) {
              if (value!.length < 6) {
                return "A senha deve ter pelo menos 6 caracteres";
              }
              return null;
            },
            controller: _passwordInputController,
            obscureText: (_obscurePassword == true) ? false : true,
            decoration: const InputDecoration(
              labelText: "Senha",
              labelStyle: TextStyle(
                color: Colors.black,
              ),
              prefixIcon: Icon(
                Icons.vpn_key_outlined,
                color: Colors.black,
              ),
              border: UnderlineInputBorder(
                //COR QUANDO NÃO ESTA FOCADO
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                //COR QUANDO ESTA FOCADO
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: _obscurePassword,
                onChanged: (newValue) {
                  setState(() {
                    _obscurePassword = newValue!;
                  });
                },
                activeColor: Colors.black,
              ),
              const Text(
                "Mostrar Senha",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),

/***************BOTAO LOGIN********************************** */
          ElevatedButton(
            onPressed: () {
              _doLogin();
              Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const Home())));
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
              "Login",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 10)),
/*****************ESQUECEU A SENHA********************************************* */
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Esqueceu a Senha?",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 10)),
        ],
      ),
    );
  }

  void _doLogin() async {
    if (_formKey.currentState!.validate()) {
      LoginService()
          .signIn(_mailInputController.text, _passwordInputController.text);
    } else {}
  }
}
