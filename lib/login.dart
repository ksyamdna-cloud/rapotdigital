import 'package:flutter/material.dart';
import 'myhompage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController inputUsername =
      TextEditingController();

  TextEditingController inputPassword =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 205, 207, 230),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // LOGO
            const Icon(
              Icons.menu_book,
              size: 150,
              color: Colors.green,
            ),

            const SizedBox(height: 10),

            // NAMA
            const Text(
              'Rapor Digital',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            // USERNAME
            SizedBox(
              width: 320,
              child: TextField(
                controller: inputUsername,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.person,
                  ),
                  hintText: 'username',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(40),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // PASSWORD
            SizedBox(
              width: 320,
              child: TextField(
                controller: inputPassword,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.lock,
                  ),
                  hintText: 'password',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(40),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // LOGIN
            ElevatedButton(
              onPressed: () {
                if (inputUsername.text == 'admin' &&
                    inputPassword.text == '12345') {

                  // Pindah ke MyHomePage
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const MyHomePage(),
                    ),
                  );

                } else {
                  print('Username atau password salah');
                }
              },

              child: const Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}