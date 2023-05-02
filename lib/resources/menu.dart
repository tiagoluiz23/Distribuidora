//import 'package:app_dist_ita/resources/functions.dart';
import 'package:app_dist_ita/view/configs.dart';
import 'package:app_dist_ita/view/enderecos.dart';
import 'package:app_dist_ita/view/pedidos.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuDrawer extends StatelessWidget {
  //atibutos(variaveis)
  //dados vindos do banco de dados
  final String usuario = "Tiago";
  final String email = "tiagoluiz23@gmail.com";
  //final String fotoPerfil = "assets/images/perfil.jpeg";

  //metodos
  Text mostrarTitulo(String texto) {
    return Text(
      texto,
      style: const TextStyle(
        fontSize: 16,
      ),
    );
  }

  const MenuDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      shadowColor: Colors.amber,
      child: ListView(
        children: [
///////////****************************CABEÇALHO*************************************** */
          UserAccountsDrawerHeader(
            accountName: Text(usuario),
            accountEmail: Text(email),
            currentAccountPictureSize: const Size.fromRadius(40),
            currentAccountPicture: CircleAvatar(
              child: Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/images/splash.png",
                    fit: BoxFit.cover,
                    width: 90,
                    height: 90,
                  ),
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
          ),
          const Divider(
            color: Colors.white,
            height: 2,
            indent: 1,
            endIndent: 1,
            thickness: 1,
          ),

/***********************************MENU PEDIDOS*******************************/
          ListTile(
            title: mostrarTitulo("Pedidos"),
            textColor: Colors.white,
              //subtitle: const Text("Página Inicial"),
              //trailing: FaIcon(FontAwesomeIcons.angleRight),
            leading: const FaIcon(
              FontAwesomeIcons.solidNoteSticky,
              color: Colors.white,
              size: 24,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Pedidos()),
              );
            }
          ),

          Divider(
            color: Colors.grey[800],
            height: 1,
            indent: 1,
            endIndent: 1,
            thickness: 1,
          ),

/***********************************MENU ENDEREÇOS*******************************/
          ListTile(
            title: mostrarTitulo("Endereços"),
            textColor: Colors.white,
              //subtitle: const Text("Ajustes no Sistema"),
              //trailing: const FaIcon(FontAwesomeIcons.angleRight),
            leading: const FaIcon(
              FontAwesomeIcons.locationPin,
              color: Colors.white,
              size: 24,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Enderecos()),);
              } //vai para pagina config
            ),

            Divider(
              color: Colors.grey[800],
              height: 1,
              indent: 1,
              endIndent: 1,
              thickness: 1,
            ),

/***********************************MENU CONFIGURAÇÕES*******************************/
            ListTile(
              title: mostrarTitulo("Configurações"),
              textColor: Colors.white,
              //subtitle: const Text("Ajustes no Sistema"),
              //trailing: const FaIcon(FontAwesomeIcons.angleRight),
              leading: const FaIcon(
                FontAwesomeIcons.gear,
                color: Colors.white,
                size: 24,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Configs()),);
                } //vai para pagina config
              ),

              Divider(
                color: Colors.grey[800],
                height: 1,
                indent: 1,
                endIndent: 1,
                thickness: 1,
              ),

/***********************************MENU LOGOUT*********************************/
          ListTile(
              title: mostrarTitulo("Logout"),
              textColor: Colors.white,
              //subtitle: const Text("Sair do Sistema"),
              //trailing: const FaIcon(FontAwesomeIcons.angleRight),
              leading: const FaIcon(
                FontAwesomeIcons.rightFromBracket,
                color: Colors.white,
                size: 24,
              ),
              onTap: () {
                //sairApp(context);
              }),
          Divider(
            color: Colors.grey[800],
            height: 1,
            indent: 1,
            endIndent: 1,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
