import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key,
    required this.login,
    required this.password,
    required this.rememberMe,
  });
  final String login;
  final String password;
  final bool rememberMe;

  @override
  State<RegistrationPage> createState() => _RegistrationPage();
}

class _RegistrationPage extends State<RegistrationPage> {
  String login = "";
  String password = "";
  bool rememberMe = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text("Авторизация"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               TextFormField(
                 decoration: const InputDecoration(
                     filled: true,
                     hintText: "Логин",
                     border: InputBorder.none
                 ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                style: TextStyle(),
                decoration: const InputDecoration(
                    filled: true,
                    hintText: "Пароль",
                    border: InputBorder.none
                 ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: rememberMe,
                    onChanged: (bool? value) {
                      setState(() {
                        rememberMe = value!;
                      });
                    },
                  ),
                  const Text("Запомнить меня"),
                ]
              ),
              const SizedBox(height: 10),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    foregroundColor: Theme.of(context).scaffoldBackgroundColor,
                    padding: const EdgeInsets.all(10),
                    minimumSize: const Size(double.infinity, 0),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Theme.of(context).primaryColor
                        ),
                        borderRadius: BorderRadius.zero
                    )
                ),
                onPressed: () => {},
                child: const Text(
                    "Вход"
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(10),
                  minimumSize: const Size(double.infinity, 0),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Theme.of(context).primaryColor
                    ),
                    borderRadius: BorderRadius.zero
                  )
                ),
                onPressed: () => {},
                child: const Text(
                    "Регистрация"
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Восстановить пароль",
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
