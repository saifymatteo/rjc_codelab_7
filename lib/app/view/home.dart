import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rjc_codelab_7/app/combined_service.dart';

import 'package:rjc_codelab_7/app/view/my_widget.dart';
import 'package:rjc_codelab_7/app/view/next_page.dart';
import 'package:rjc_codelab_7/app/view/notification_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [NotificationWidget()],
      ),
      body: Column(
        children: [
          const Expanded(
            child: MyWidget(
              label: 'Top Widget',
              color: Colors.green,
            ),
          ),
          const Expanded(
            child: MyWidget(
              label: 'Bottom Widget',
              color: Colors.purple,
            ),
          ),
          TextButton(
            onPressed: () {
              Provider.of<CombinedService>(context, listen: false)
                  .setBothColorAndValue(context, Colors.orange, 100);
            },
            child: const Text('Change Both'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<Widget>(
                  builder: (_) => const NextPage(),
                ),
              );
            },
            child: const Text('Go to another page'),
          ),
        ],
      ),
    );
  }
}
