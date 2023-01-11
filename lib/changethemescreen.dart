import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:provider/provider.dart';
import 'package:themechanger_provider/themeprovider.dart';

class ChangeThemeScreen extends StatefulWidget {
  const ChangeThemeScreen({super.key});

  @override
  State<ChangeThemeScreen> createState() => _ChangeThemeScreenState();
}

class _ChangeThemeScreenState extends State<ChangeThemeScreen> {
  @override
  Widget build(BuildContext context) {
    print("build");
    final themechanger = Provider.of<ThemeProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Mode"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Consumer<ThemeProvider>(builder: (context, value, child) {
              return LiteRollingSwitch(
                value: true,
                width: 140,
                textOn: 'Light Mode',
                textOff: 'Dark Mode',
                colorOn: Colors.lightBlue,
                colorOff: Colors.black,
                iconOn: Icons.light_mode,
                iconOff: Icons.dark_mode,
                animationDuration: const Duration(milliseconds: 300),
                onChanged: (bool state) {
                  value.swaptheme();
                },
                onDoubleTap: () {},
                onSwipe: () {},
                onTap: () {},
              );
            }),
          ),
        ],
      ),
    );
  }
}
