import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:rjc_codelab_7/app/color_service.dart';
import 'package:rjc_codelab_7/app/value_service.dart';

class CombinedService {
  void setBothColorAndValue(BuildContext context, Color c, int v) {
    final colorService = Provider.of<ColorService>(context, listen: false);
    final valueService = Provider.of<ValueService>(context, listen: false);

    colorService.color = c;
    valueService.count = v;
  }
}
