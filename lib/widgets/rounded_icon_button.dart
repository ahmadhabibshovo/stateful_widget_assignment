import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });
  final Function() onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Ink(
        padding: null,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: IconButton(
          padding: null,
          icon: Icon(
            icon,
            color: Colors.grey,
            size: 30,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
