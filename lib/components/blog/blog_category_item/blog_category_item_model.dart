import '/components/input_controls/buttons/hero_button/hero_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'blog_category_item_widget.dart' show BlogCategoryItemWidget;
import 'package:flutter/material.dart';

class BlogCategoryItemModel extends FlutterFlowModel<BlogCategoryItemWidget> {
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
