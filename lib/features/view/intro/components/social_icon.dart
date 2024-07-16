import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/constants/app_sizes.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({super.key, required this.icon, this.onTap});
  final String icon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: AppSizes.defaultPadding * 0.4),
        child: SvgPicture.asset(
          icon,
          height: 15,
          width: 15,
        ),
      ),
    );
  }
}
