import 'package:flutter/material.dart';
import 'package:reviewit/components/actionbutton.dart';
import 'package:reviewit/components/formfields.dart';
import 'package:reviewit/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen(
      {super.key,
      required this.toggle,
      required this.icon,
      required this.obsSecure,
      required this.togglepass});

  final void Function() toggle;
  final bool obsSecure;
  final Icon icon;
  final void Function() togglepass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Image.asset('assets/bg.jpg',),
                const SizedBox(
                  height: 50,
                ),
                const Formfields(
                  hint: 'Email',
                  obsecure: false,
                  noTapIcon: Icon(Icons.email_rounded),
                ),
                const SizedBox(
                  height: 30,
                ),
                Formfields(
                  hint: 'password',
                  obsecure: obsSecure,
                  icon: IconButton(onPressed: togglepass, icon: icon),
                ),
                const SizedBox(
                  height: 70,
                ),
                ActionButton(
                  title: 'Login',
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                  },
                ),
                Row(
                  children: [
                    const Text(
                      'don\'t have an account?',
                      style: TextStyle(fontSize: 16),
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: toggle,
                        child: const Text(
                          'signUp',
                          style: TextStyle(fontSize: 16),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
