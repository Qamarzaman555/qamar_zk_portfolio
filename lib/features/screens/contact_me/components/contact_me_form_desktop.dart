import 'package:flutter/material.dart';

import '../../../../utils/uk_text_field/uk_text_field.dart';
import 'side_title_column.dart';

class ContactMeFormDesktop extends StatelessWidget {
  const ContactMeFormDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(child: SideTitle()),
        Expanded(
          flex: 3,
          child: Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '  FULL NAME *',
                style: Theme.of(context)
                    .primaryTextTheme
                    .titleSmall!
                    .copyWith(color: Colors.black, fontSize: 12),
              ),
              const SizedBox(height: 8),
              UKTextField(
                hintText: 'First name and Last name',
                fillColor: Colors.grey.withOpacity(0.5),
                filled: true,
                onSaved: (s) {},
                validator: (s) {
                  return s;
                },
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '  PHONE NUMBER',
                          style: Theme.of(context)
                              .primaryTextTheme
                              .titleSmall!
                              .copyWith(color: Colors.black, fontSize: 12),
                        ),
                        const SizedBox(height: 8),
                        UKTextField(
                          hintText: 'Area Code - phone number',
                          fillColor: Colors.grey.withOpacity(0.5),
                          filled: true,
                          onSaved: (s) {},
                          validator: (s) {
                            return s;
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '  EMAIL *',
                          style: Theme.of(context)
                              .primaryTextTheme
                              .titleSmall!
                              .copyWith(color: Colors.black, fontSize: 12),
                        ),
                        const SizedBox(height: 8),
                        UKTextField(
                          hintText: 'E-mail address',
                          fillColor: Colors.grey.withOpacity(0.5),
                          filled: true,
                          onSaved: (s) {},
                          validator: (s) {
                            return s;
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Text(
                '  MESSAGE *',
                style: Theme.of(context)
                    .primaryTextTheme
                    .titleSmall!
                    .copyWith(color: Colors.black, fontSize: 12),
              ),
              const SizedBox(height: 8),
              UKTextField(
                hintText: 'Type your message',
                fillColor: Colors.grey.withOpacity(0.5),
                filled: true,
                onSaved: (s) {},
                validator: (s) {
                  return s;
                },
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {},
                child: SizedBox(
                  child: Row(
                    children: [
                      const Spacer(),
                      Text(
                        'Send',
                        style: Theme.of(context)
                            .primaryTextTheme
                            .titleSmall!
                            .copyWith(color: Colors.black, fontSize: 14),
                      ),
                      const SizedBox(height: 8),
                      const Icon(
                        Icons.arrow_right_alt,
                        size: 16,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          )),
        )
      ],
    );
  }
}
