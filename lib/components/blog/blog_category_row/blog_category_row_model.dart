import '/components/blog/blog_category_item/blog_category_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'blog_category_row_widget.dart' show BlogCategoryRowWidget;
import 'package:flutter/material.dart';

class BlogCategoryRowModel extends FlutterFlowModel<BlogCategoryRowWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for BlogCategoryItem component.
  late BlogCategoryItemModel blogCategoryItemModel;

  @override
  void initState(BuildContext context) {
    blogCategoryItemModel = createModel(context, () => BlogCategoryItemModel());
  }

  @override
  void dispose() {
    blogCategoryItemModel.dispose();
  }
}
