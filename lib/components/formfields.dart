import 'package:flutter/material.dart';

class Formfields extends StatelessWidget {
  const Formfields({super.key,required this.hint,required this.obsecure,this.icon,this.noTapIcon});

  final String hint;
  final bool obsecure;
  final IconButton? icon;
  final Icon? noTapIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecure,
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: icon != null ? icon : noTapIcon,
      ),
    );
  }
}
