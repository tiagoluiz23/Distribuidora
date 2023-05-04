import 'package:app_dist_ita/view/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../resources/signupservices.dart';

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
  
  final _nameInputController = TextEditingController();
  final _mailInputController = TextEditingController();
  final _passwordInputController = TextEditingController();
  final _confirmInputController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 190, horizontal: 50),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              Colors.amber,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Cadastre-se",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              Form(
                key: _formKey,
                child: Column(
                  children: [
/***********************CAIXA DE TEXTO NOME DO USUARIO*********************** */
                    TextFormField(
                      validator: (value) {
                        if (value!.length < 10) {
                          return "Digite um nome maior";
                        }
                        return null;
                      },
                      controller: _nameInputController,
                      autofocus: true,
                      decoration: const InputDecoration(
                        labelText: "Nome do Usuário",
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        prefixIcon: Icon(
                          Icons.person,
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
/***********************CAIXA DE EMAIL********************************* */
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
                      decoration: const InputDecoration(
                        labelText: "E-mail",
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        prefixIcon: Icon(
                          Icons.mail,
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
                      obscureText: (showPassword == true)
                          ? false
                          : true, //***IF TERNARIO */
                      decoration: const InputDecoration(
                        labelText: "Senha",
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        prefixIcon: Icon(
                          Icons.vpn_key,
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
/*******************CAIXA DE TEXTO CONFIRME SENHA************************************* */
                    (showPassword == false)
                        ? TextFormField(
                            validator: (value) {
                              if (value != _passwordInputController.text) {
                                return "As senhas devem ser iguais";
                              }
                              return null;
                            },
                            controller: _confirmInputController,
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: "Confirme a Senha",
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                              prefixIcon: Icon(
                                Icons.vpn_key,
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
                          )
                        : Container(),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                    Row(
                      children: [
                        Checkbox(
                          value: showPassword,
                          onChanged: (newValue) {
                            setState(() {
                              showPassword = newValue!;
                            });
                          },
                          activeColor: Colors.blue,
                        ),
                        const Text(
                          "Mostrar Senha",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

/**************************BOTAO CADASTRAR********************************** */
              const Padding(padding: EdgeInsets.symmetric(vertical: 30)),
              ElevatedButton(
                onPressed: () {
                  _doSignUp();
 
                  Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const LogIn())));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.amber
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: const BorderSide(width: 0.2, color: Colors.black),
                    ),
                  ),
                ),
                child: const Text(
                  "Cadastrar",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// *********************************METODOS********************************
  void _doSignUp() {
    if (_formKey.currentState!.validate()) {
      SignUpService().signUp(_mailInputController.text, _passwordInputController.text);
    } else {
    
    }
    /*User newUser = User(
      name: _nameInputController.text,
      mail: _mailInputController.text,
      password: _passwordInputController.text,
      keepon: true,
    );
    print(newUser);
    _saveUser(newUser);*/
  }

 /* void _saveUser(LoginModel user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(PreferencesKeys.activeUser, json.encode(user.toJson()));
  }*/
}


