import 'package:flutter/material.dart';
import 'package:preferencias_user/provider/theme_provider.dart';
import 'package:preferencias_user/router/app_route.dart';
import 'package:preferencias_user/share_preferences/preferences.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => ThemeProvider(isDarkMode: Preferences.isDarkMode),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferencias',
      initialRoute: AppRoute.homeRoute,
      routes: AppRoute.routes,
      theme: Provider.of<ThemeProvider>(context).currentTheme,
    );
  }
}
