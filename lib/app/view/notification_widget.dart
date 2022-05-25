import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rjc_codelab_7/app/color_service.dart';
import 'package:rjc_codelab_7/app/value_service.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(right: 10),
      child: Row(
        children: [
          const Icon(
            Icons.notifications_rounded,
            color: Colors.white,
            size: 25,
          ),
          Consumer<ColorService>(
            builder: (_, colorService, __) {
              return Container(
                height: 30,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colorService.color,
                ),
                child: Consumer<ValueService>(
                  builder: (_, valueService, __) {
                    return Text(valueService.count.toString());
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
