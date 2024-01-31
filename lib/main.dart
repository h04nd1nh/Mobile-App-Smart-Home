import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:iot/themes/background_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iot/config/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sf = await SharedPreferences.getInstance();
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(
        sharedPreferences: sf,
      ),
    ),
  );
  // runApp(
  //   MyApp(
  //     sharedPreferences: sf,
  //   ),
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.sharedPreferences});

  final SharedPreferences sharedPreferences;
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: startPageTheme,
      routerConfig: router,
    );
  }
}
