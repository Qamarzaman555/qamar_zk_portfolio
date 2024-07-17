import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/validators/validators.dart';
import '../../../controllers/contact_me_controller.dart';
import 'side_title_column.dart';

class ContactMeFormDesktop extends StatelessWidget {
  const ContactMeFormDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ContactMeController());
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(child: SideTitle()),
        Expanded(
          flex: 3,
          child: Form(
            key: controller.contactMeFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Full Name
                TextFormField(
                  validator: (value) =>
                      AppValidator.validateEmptyText('Enter full name', value),
                  controller: controller.fullName,
                  decoration: const InputDecoration(
                      constraints: BoxConstraints.expand(height: 40),
                      labelStyle: TextStyle(fontWeight: FontWeight.w600),
                      prefixIcon: Icon(Iconsax.user),
                      labelText: 'Full name'),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Phone Number
                          TextFormField(
                            controller: controller.phoneNo,
                            validator: (value) =>
                                AppValidator.validatePhoneNumber(value),
                            expands: false,
                            decoration: const InputDecoration(
                              constraints: BoxConstraints.expand(height: 40),
                              label: Text('Phone number'),
                              prefixIcon: Icon(Iconsax.call),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Email
                          TextFormField(
                            validator: (value) =>
                                AppValidator.validateEmail(value),
                            controller: controller.email,
                            decoration: const InputDecoration(
                                constraints: BoxConstraints.expand(height: 40),
                                labelStyle:
                                    TextStyle(fontWeight: FontWeight.w600),
                                prefixIcon: Icon(Iconsax.direct_right),
                                labelText: 'Email'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 12),
                // Message
                TextFormField(
                  controller: controller.message,
                  maxLength: 500,
                  maxLines: 5,
                  onChanged: controller.updateCharCount,
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(fontWeight: FontWeight.w600),
                    prefixIcon: Icon(Iconsax.message),
                    labelText: 'Message',
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: 180,
                  height: 40,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(width: 1, color: Colors.grey),
                      ),
                      onPressed: controller.sendEmail,
                      child: Row(
                        children: [
                          Text('Send',
                              style: TextStyle(color: Colors.grey[600])),
                          const Spacer(),
                          Icon(
                            Iconsax.arrow_right,
                            color: Colors.grey[600],
                          ),
                        ],
                      )),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
