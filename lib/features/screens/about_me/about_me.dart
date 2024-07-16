import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/widgets/title_text/title_text.dart';
import '../../../utils/constants/app_sizes.dart';
import '../../../utils/constants/app_strings.dart';
import '../../../constants/widgets/responsive/responsive.dart';
import 'components/about_me_description.dart';
import 'components/side_image.dart';

class AboutMeView extends StatelessWidget {
  const AboutMeView({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = (Responsive.isLargeMobile(context) ||
        (Responsive.isTablet(context)) ||
        (Responsive.isMobile(context)));
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: Padding(
        padding: responsive
            ? const EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding)
            : const EdgeInsets.all(AppSizes.defaultPadding / 2),
        child: Row(
          children: [
            !responsive ? const MyImage() : const SizedBox.shrink(),
            responsive
                ? Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CombineTitleText(text1: 'About', text2: 'Me'),
                          const SizedBox(height: 50),
                          Text(
                            AppStrings.aboutMe1,
                            style: Theme.of(context)
                                .primaryTextTheme
                                .titleSmall!
                                .apply(color: Colors.black),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            AppStrings.aboutMe2,
                            style: Theme.of(context)
                                .primaryTextTheme
                                .titleSmall!
                                .apply(color: Colors.black),
                          ),
                          InkWell(
                              onTap: () {
                                Get.dialog(Dialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const SingleChildScrollView(
                                      child: Flexible(
                                          fit: FlexFit.tight,
                                          child: AllAboutMe()),
                                    )));
                              },
                              child: const Text(
                                'read more...',
                                style: TextStyle(color: Colors.blue),
                              )),
                        ],
                      ),
                    ),
                  )
                : const Expanded(flex: 3, child: AllAboutMe()),
          ],
        ),
      ),
    );
  }
}
