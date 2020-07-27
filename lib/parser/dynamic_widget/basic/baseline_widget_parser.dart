import '../../dynamic_widget.dart';
import 'package:flutter/widgets.dart';

class BaselineWidgetParser extends WidgetParser {
  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener listener) {
    return Baseline(
      baseline: map["baseline"],
      baselineType: map["baselineType"] == "alphabetic"
          ? TextBaseline.alphabetic
          : TextBaseline.ideographic,
      child: DynamicWidgetBuilder.buildFromMap(
          map["child"], buildContext, listener),
    );
  }

  @override
  String get widgetName => "Baseline";
}
