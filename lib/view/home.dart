import 'package:app_dist_ita/resources/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app_dist_ita/resources/functions.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State createState() => HomeState();
}

class HomeState extends State<Home> {
  setFullScreen() {
    //Função Full screen
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky,
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => sairApp(context),
      child: Scaffold( //onDrawerChanged: setFullScreen(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            "Distribuidora Itabirana",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Arial",
              fontSize: 18,
            ),
          ),       
          backgroundColor: Colors.amber[400],
          leadingWidth: 60,
          leading: Transform.translate(
            offset: const Offset(5, 0),
            child: Image.asset("assets/img/logoHome.png"),
          ),
        ),
        
        endDrawer: const MenuDrawer(),

        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Image.asset(
                "assets/img/backGround.png", 
                width: 500, 
                height: 700
              ),
            ),  
          ],
        ),    
      ), //bottomNavigationBar: ,
    );
  }
}
