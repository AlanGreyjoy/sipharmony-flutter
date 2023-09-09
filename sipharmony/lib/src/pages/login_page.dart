import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isAPIcallProcess = false;
  bool hidePassword = true;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? username;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // Logo
            const Image(
              image: AssetImage('assets/images/mazeLogoWithIconTop.png'),
              width: 250,
            ),

            const SizedBox(height: 10),

            Text('Welcome!',
                style: GoogleFonts.bebasNeue(
                  color: Colors.grey[700],
                  fontSize: 30,
                )),

            SizedBox(height: 10),

            // Email textfield rounded
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your email...',
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your password...',
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25),

            // login button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/main'),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
                ),
              ),
            ),

            // copyright text
            const Padding(
              padding: EdgeInsets.all(22.0),
              child: Text(
                '© 2023 Sipharmony. All rights reserved.',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
