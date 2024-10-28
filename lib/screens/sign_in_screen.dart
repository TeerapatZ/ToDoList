import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist_app/components/my_textformfield.dart';
import 'package:todolist_app/constant/constant.dart';
import 'package:todolist_app/screens/index_screen.dart';
import 'package:todolist_app/screens/sign_up_screen.dart';

import '../components/my_button.dart';
import '../components/my_icon_btn.dart';

import 'package:firebase_auth/firebase_auth.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signInUser() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      print("Login Successful");

      // Show success popup
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Sign In Successful'),
            content: const Text('You have successfully signed in.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close the popup
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const IndexScreen()),
                  );
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    } on FirebaseAuthException catch (e) {
      print("Failed to login! Please try again.");

      // Show error popup
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Sign In Failed'),
            content: Text(e.message ?? 'An error occurred during sign-in.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context), // Close the popup
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  void showPopup(String provider) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Login with $provider'),
          content: Text('You have clicked on $provider'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 80, 15, 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Text(
                  'Hello, ready to get started!',
                  style: textTitle,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Please sign-in to your account.',
                  style: GoogleFonts.lato(fontSize: 18, color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextFormField(
                    controller: emailController,
                    obscureText: false,
                    labelText: 'Email',
                    hintText: 'Enter your email'),
                const SizedBox(
                  height: 20,
                ),
                MyTextFormField(
                    controller: passwordController,
                    obscureText: true,
                    labelText: 'Password',
                    hintText: 'Enter your password'),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot password?',
                      style: GoogleFonts.lato(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                MyButton(
                  onTap: signInUser,
                  hinText: 'Sign In',
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.8,
                      color: Colors.grey,
                    )),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      'Or continue with',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.8,
                      color: Colors.grey,
                    )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => showPopup("Google"),
                      child: const MyIconBtn(
                        imagePath: 'assets/images/google_icon1.png',
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                      onTap: () => showPopup("Apple"),
                      child: const MyIconBtn(
                        imagePath: 'assets/images/apple_icon.png',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Register now.',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
