import 'package:flutter/material.dart';
import 'package:reviewit/screens/login_screen.dart';
import 'package:reviewit/screens/signup_screen.dart';


class LoginAndSignup extends StatefulWidget {
  const LoginAndSignup({super.key});

  @override
  State<LoginAndSignup> createState() => _LoginAndSignupState();
}

class _LoginAndSignupState extends State<LoginAndSignup> {
  bool isPassSecure = true;
  Icon icon = const Icon(Icons.remove_red_eye_outlined);
  bool showPassIcon = true;

  void togglePass() {
    setState(() {
      isPassSecure = !isPassSecure;
      showPassIcon = !showPassIcon;
    });
    if (!showPassIcon) {
      icon = const Icon(Icons.remove_red_eye);
    }
    if (showPassIcon) {
      icon = const Icon(Icons.remove_red_eye_outlined);
    }
  }
  bool isLoginPassSecure = true;
  Icon loginIcon = const Icon(Icons.remove_red_eye_outlined);
  bool showLoginPassIcon = true;

  void toggleLoginPass() {
    setState(() {
      isLoginPassSecure = !isLoginPassSecure;
      showLoginPassIcon = !showLoginPassIcon;
    });
    if (!showLoginPassIcon) {
      loginIcon = const Icon(Icons.remove_red_eye);
    }
    if (showLoginPassIcon) {
      loginIcon = const Icon(Icons.remove_red_eye_outlined);
    }
  }

  bool isconpasssecure = true;
  Icon confirmicon = const Icon(Icons.remove_red_eye_outlined);
  bool showconPassIcon = true;

  void toggleconfPass() {
    setState(() {
      isconpasssecure = !isconpasssecure;
      showconPassIcon = !showconPassIcon;
    });
    if (!showconPassIcon) {
      confirmicon = const Icon(Icons.remove_red_eye);
    }
    if (showconPassIcon) {
      confirmicon = const Icon(Icons.remove_red_eye_outlined);
    }
  }

  bool isLogin = true;
  void toggleScreen() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLogin) {
      return LoginScreen(
        toggle: toggleScreen,
        obsSecure: isLoginPassSecure,
        icon: loginIcon,
        togglepass: toggleLoginPass,
      );
    } else {
      return SignupScreen(
        toggle: toggleScreen,
        icon: icon,
        confIcon: confirmicon,
        confObsSecure: isconpasssecure,
        obsSecure: isPassSecure,
        togglepass: togglePass,
        toggleconpass: toggleconfPass,
      );
    }
  }
}
