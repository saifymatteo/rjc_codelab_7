import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rjc_codelab_7/app/value_service.dart';
import 'package:rjc_codelab_7/app/view/notification_widget.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    final valueService = Provider.of<ValueService>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        actions: const [NotificationWidget()],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('This is the value on another page!'),
            Text(
              valueService.count.toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
