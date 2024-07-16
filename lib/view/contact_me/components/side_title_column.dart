import 'package:flutter/material.dart';

import 'title_text.dart';

class SideTitle extends StatelessWidget {
  const SideTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CombineContactMeTitle(),
        Text(
          'Ask me anything or just say hi...',
          style:
              Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 14),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            const Icon(Icons.phone_outlined, color: Colors.black38, size: 24),
            Text('+923159392193',
                style: Theme.of(context)
                    .primaryTextTheme
                    .titleSmall!
                    .apply(color: Colors.black38)),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(Icons.mail_outline_outlined,
                color: Colors.black38, size: 24),
            Text(
              'qamarzk12345@gmail.com',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.apply(color: Colors.black38),
            ),
          ],
        ),
      ],
    );
  }
}
