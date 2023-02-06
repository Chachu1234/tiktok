import 'create_account.dart';
import 'package:flutter/material.dart';
import '../pages/first_page.dart';
import '../authservice/auth_service.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AnimatedTextKit(
          animatedTexts: [
            WavyAnimatedText('Login'),
          ],
          isRepeatingAnimation: true,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: TextField(
                controller: _emailController,
                decoration: const InputDecoration(hintText: 'Email'),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () async {
                final message = await AuthService().login(
                  email: _emailController.text,
                  password: _passwordController.text,
                );
                if (message!.contains('Success')) {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setBool('islogged', true);
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const FirstPage(),
                    ),
                  );
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(message),
                  ),
                );
              },
              child: const Text('Login'),
            ),
            const SizedBox(
              height: 15.0,
            ),
            SignInButton(
              Buttons.Google,
              onPressed: () async {
                final isauthenticated = await AuthService().signinwithgoogle();
                if (isauthenticated!) {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setBool('islogged', true);
                  // ignore: use_build_context_synchronously
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return const FirstPage();
                  })));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("You are not authenticated user"),
                    ),
                  );
                }
              },
            ),
            const SizedBox(
              height: 30.0,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CreateAccount(),
                  ),
                );
              },
              child: const Text('Create Account'),
            ),
          ],
        ),
      ),
    );
  }
}
