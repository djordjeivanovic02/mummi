import '/components/input_controls/buttons/hero_button/hero_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'hero_top_widget_widget.dart' show HeroTopWidgetWidget;
import 'package:flutter/material.dart';

class HeroTopWidgetModel extends FlutterFlowModel<HeroTopWidgetWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for HeroButton component.
  late HeroButtonModel heroButtonModel;

  @override
  void initState(BuildContext context) {
    heroButtonModel = createModel(context, () => HeroButtonModel());
  }

  @override
  void dispose() {
    heroButtonModel.dispose();
  }
}
