import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdaptativeButton extends StatelessWidget {
  final String label;
  final Function() onPressed; // or Function()

  const AdaptativeButton({super.key, 
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: () => onPressed, // or onPressed()
            color: Theme.of(context).primaryColor,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(label),
          )
        : ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            onPressed: onPressed,
            child: Text(label),
          );
  }
}
