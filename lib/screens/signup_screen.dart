import 'package:flutter/material.dart';
import 'package:reviewit/components/actionbutton.dart';
import 'package:reviewit/components/formfields.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen(
      {super.key,
      required this.toggle,
      required this.togglepass,
      required this.toggleconpass,
        required this.icon,
        required this.obsSecure,
        required this.confIcon,
        required this.confObsSecure,
      });
  final bool obsSecure;
  final Icon icon;
  final Icon confIcon;
  final bool confObsSecure;
  final void Function() toggle;
  final void Function() togglepass;
  final void Function() toggleconpass;

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
                Image.asset('assets/bg.jpg'),
                const SizedBox(
                  height: 15,
                ),
                const Formfields(
                  hint: 'enter your email',
                  obsecure: false,
                  noTapIcon: Icon(Icons.email_rounded  ),
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
                  height: 30,
                ),
                Formfields(
                  hint: 'confirm password',
                  obsecure: confObsSecure,
                  icon:
                      IconButton(onPressed: toggleconpass, icon: confIcon),
                ),
                const SizedBox(
                  height: 60,
                ),
                ActionButton(
                  title: 'SignUp',
                  onTap: () {},
                ),
                Row(
                  children: [
                    const Text(
                      'already have an account?',
                      style: TextStyle(fontSize: 16),
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: toggle,
                        child: const Text(
                          'Login',
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
