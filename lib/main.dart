import 'package:flutter/material.dart';
import 'package:themechanger_provider/changethemescreen.dart';
import 'package:provider/provider.dart';
import 'package:themechanger_provider/themeprovider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: Builder(builder: (BuildContext context) {
        final themechanger = Provider.of<ThemeProvider>(context, listen: false);
        return MaterialApp(
          title: 'Flutter Demo',
          themeMode: themechanger.SelectedTheme,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          darkTheme: ThemeData(brightness: Brightness.dark),
          home: ChangeThemeScreen(),
        );
      }),
    );
  }
}
