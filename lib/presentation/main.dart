import 'package:flutter/material.dart';
import 'package:task_2/presentation/pages/registration_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          primary: Colors.blueAccent,
          primaryContainer: Colors.blueAccent,
        ),
        useMaterial3: true,
      ),
      home: const RegistrationPage(
          login: '',
          password: '',
          rememberMe: false,
      ),
    );
  }
}
