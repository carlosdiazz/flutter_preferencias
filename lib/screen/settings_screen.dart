import 'package:flutter/material.dart';
import 'package:preferencias_user/share_preferences/preferences.dart';
import 'package:preferencias_user/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  //bool isDarkMode = false;
  //int gender = 1;
  //String name = 'Carlos';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              'Ajustes',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300),
            ),
            const Divider(),
            SwitchListTile.adaptive(
              value: Preferences.isDarkMode,
              title: const Text('DarkMode'),
              onChanged: (value) {
                setState(() {
                  Preferences.isDarkMode = value;
                });
              },
            ),
            const Divider(),
            RadioListTile(
              value: 1,
              groupValue: Preferences.gender,
              title: const Text('Masculino'),
              onChanged: (value) {
                setState(() {
                  Preferences.gender = value ?? 1;
                });
              },
            ),
            const Divider(),
            RadioListTile(
              value: 2,
              groupValue: Preferences.gender,
              title: const Text('Femenino'),
              onChanged: (value) {
                setState(() {
                  Preferences.gender = value ?? 2;
                });
              },
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                initialValue: Preferences.name,
                decoration: const InputDecoration(
                    labelText: 'Nombre', helperText: 'Nombre del Usuario'),
                onChanged: (value) {
                  Preferences.name = value;
                  setState(() {});
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}
