import 'package:flutter/material.dart';
import 'package:preferencias_user/share_preferences/preferences.dart';
import 'package:preferencias_user/widgets/widgets.dart';

class HomeScrenn extends StatelessWidget {
  const HomeScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('isDarMode: ${Preferences.isDarkMode}'),
          const Divider(),
          Text('Genero: ${Preferences.gender}'),
          const Divider(),
          Text('Nombre del Usuario: ${Preferences.name}'),
          const Divider()
        ],
      ),
    );
  }
}
