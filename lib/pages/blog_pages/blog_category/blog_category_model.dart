import '/components/app_bar_widget.dart';
import '/components/blog/blog_category_row/blog_category_row_widget.dart';
import '/components/blog/blog_discover_more/blog_discover_more_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'blog_category_widget.dart' show BlogCategoryWidget;
import 'package:flutter/material.dart';

class BlogCategoryModel extends FlutterFlowModel<BlogCategoryWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BlogCategoryRow component.
  late BlogCategoryRowModel blogCategoryRowModel1;
  // Model for BlogCategoryRow component.
  late BlogCategoryRowModel blogCategoryRowModel2;
  // Model for BlogCategoryRow component.
  late BlogCategoryRowModel blogCategoryRowModel3;
  // Model for BlogCategoryRow component.
  late BlogCategoryRowModel blogCategoryRowModel4;
  // Model for BlogCategoryRow component.
  late BlogCategoryRowModel blogCategoryRowModel5;
  // Model for BlogCategoryRow component.
  late BlogCategoryRowModel blogCategoryRowModel6;
  // Model for BlogDiscoverMore component.
  late BlogDiscoverMoreModel blogDiscoverMoreModel1;
  // Model for BlogDiscoverMore component.
  late BlogDiscoverMoreModel blogDiscoverMoreModel2;
  // Model for BlogDiscoverMore component.
  late BlogDiscoverMoreModel blogDiscoverMoreModel3;
  // Model for BlogDiscoverMore component.
  late BlogDiscoverMoreModel blogDiscoverMoreModel4;
  // Model for BlogDiscoverMore component.
  late BlogDiscoverMoreModel blogDiscoverMoreModel5;
  // Model for BlogDiscoverMore component.
  late BlogDiscoverMoreModel blogDiscoverMoreModel6;
  // Model for BlogDiscoverMore component.
  late BlogDiscoverMoreModel blogDiscoverMoreModel7;
  // Model for AppBar component.
  late AppBarModel appBarModel;

  @override
  void initState(BuildContext context) {
    blogCategoryRowModel1 = createModel(context, () => BlogCategoryRowModel());
    blogCategoryRowModel2 = createModel(context, () => BlogCategoryRowModel());
    blogCategoryRowModel3 = createModel(context, () => BlogCategoryRowModel());
    blogCategoryRowModel4 = createModel(context, () => BlogCategoryRowModel());
    blogCategoryRowModel5 = createModel(context, () => BlogCategoryRowModel());
    blogCategoryRowModel6 = createModel(context, () => BlogCategoryRowModel());
    blogDiscoverMoreModel1 =
        createModel(context, () => BlogDiscoverMoreModel());
    blogDiscoverMoreModel2 =
        createModel(context, () => BlogDiscoverMoreModel());
    blogDiscoverMoreModel3 =
        createModel(context, () => BlogDiscoverMoreModel());
    blogDiscoverMoreModel4 =
        createModel(context, () => BlogDiscoverMoreModel());
    blogDiscoverMoreModel5 =
        createModel(context, () => BlogDiscoverMoreModel());
    blogDiscoverMoreModel6 =
        createModel(context, () => BlogDiscoverMoreModel());
    blogDiscoverMoreModel7 =
        createModel(context, () => BlogDiscoverMoreModel());
    appBarModel = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    blogCategoryRowModel1.dispose();
    blogCategoryRowModel2.dispose();
    blogCategoryRowModel3.dispose();
    blogCategoryRowModel4.dispose();
    blogCategoryRowModel5.dispose();
    blogCategoryRowModel6.dispose();
    blogDiscoverMoreModel1.dispose();
    blogDiscoverMoreModel2.dispose();
    blogDiscoverMoreModel3.dispose();
    blogDiscoverMoreModel4.dispose();
    blogDiscoverMoreModel5.dispose();
    blogDiscoverMoreModel6.dispose();
    blogDiscoverMoreModel7.dispose();
    appBarModel.dispose();
  }
}
