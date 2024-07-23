import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.title,required this.onTap});

  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
        child: Row(
          children: [
            Text(
             title,
              style: const TextStyle(fontSize: 30, color:  const Color.fromRGBO(191, 113, 238, 1)),
            ),
            const Spacer(),
            const Icon(
              Icons.navigate_next_rounded,
              size: 60,
              color: const Color.fromRGBO(191, 113, 238, 1),
            ),
          ],
        ),
    );
  }
}
