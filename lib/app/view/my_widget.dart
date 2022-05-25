import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rjc_codelab_7/app/color_service.dart';
import 'package:rjc_codelab_7/app/value_service.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key, this.label, this.color});

  final String? label;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Consumer2<ValueService, ColorService>(
            builder: (_, valueService, colorService, __) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '$label, ${valueService.count}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  MyChildWidget(
                    label: 'Click to update number!',
                    onWidgetClicked: () {
                      valueService.count++;
                    },
                  ),
                  MyChildWidget(
                    label: 'Click to update color!',
                    onWidgetClicked: () {
                      colorService.color = color!;
                    },
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class MyChildWidget extends StatelessWidget {
  const MyChildWidget({super.key, this.onWidgetClicked, this.label});

  final void Function()? onWidgetClicked;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onWidgetClicked,
      child: Text(label!),
    );
  }
}
