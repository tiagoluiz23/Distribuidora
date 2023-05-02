import 'package:flutter/material.dart';

Future<bool> sairApp(BuildContext context) async {
  bool? saiu = await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        //title: const Text("LOGOUT"),
        content: const Text("Tem certeza que deseja sair?"),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: const Text("Não")
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: const Text("Sim")
          ),
        ],
      );
    }
  );
  return saiu ?? false;
}
