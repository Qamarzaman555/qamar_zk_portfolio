import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/constants.dart';
import '../../res/constants/app_strings.dart';
import '../../view model/responsive.dart';
import 'components/about_me_description.dart';
import 'components/side_image.dart';
import 'components/title_text.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

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
            ? const EdgeInsets.symmetric(horizontal: defaultPadding)
            : const EdgeInsets.all(defaultPadding / 2),
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
                          const CombileAboutMeTitle(),
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
