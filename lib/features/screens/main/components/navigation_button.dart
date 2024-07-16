import 'package:flutter/material.dart';

import '../../../../constants/widgets/responsive/responsive.dart';

class NavigationTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const NavigationTextButton(
      {super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context)
        ? TextButton(
            onPressed: onTap,
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ))
        : OutlinedButton(
            onPressed: onTap,
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ));
  }
}
