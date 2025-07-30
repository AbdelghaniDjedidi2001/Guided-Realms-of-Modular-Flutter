import 'package:app_settings/provider/app_setting_provider.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:modular_flutter/di/injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDeoendencies(Environment.dev);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: const MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final appSettingProvider = getIt<AppSettingProvider>();
    return Scaffold(
      body: Center(child: Text(appSettingProvider.getAppLanguge())),
    );
  }
}
