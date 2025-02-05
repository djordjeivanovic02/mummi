import '/components/input_controls/buttons/hero_button/hero_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'blog_read_next_widget.dart' show BlogReadNextWidget;
import 'package:flutter/material.dart';

class BlogReadNextModel extends FlutterFlowModel<BlogReadNextWidget> {
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
