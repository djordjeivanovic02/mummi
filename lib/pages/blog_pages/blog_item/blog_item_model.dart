import '/components/blog/blog_read_next/blog_read_next_widget.dart';
import '/components/blog/blog_read_time/blog_read_time_widget.dart';
import '/components/blog/blog_writer_indicator/blog_writer_indicator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'blog_item_widget.dart' show BlogItemWidget;
import 'package:flutter/material.dart';

class BlogItemModel extends FlutterFlowModel<BlogItemWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BlogWriterIndicator component.
  late BlogWriterIndicatorModel blogWriterIndicatorModel;
  // Model for BlogReadTime component.
  late BlogReadTimeModel blogReadTimeModel;
  // Model for BlogReadNext component.
  late BlogReadNextModel blogReadNextModel1;
  // Model for BlogReadNext component.
  late BlogReadNextModel blogReadNextModel2;
  // Model for BlogReadNext component.
  late BlogReadNextModel blogReadNextModel3;
  // Model for BlogReadNext component.
  late BlogReadNextModel blogReadNextModel4;

  @override
  void initState(BuildContext context) {
    blogWriterIndicatorModel =
        createModel(context, () => BlogWriterIndicatorModel());
    blogReadTimeModel = createModel(context, () => BlogReadTimeModel());
    blogReadNextModel1 = createModel(context, () => BlogReadNextModel());
    blogReadNextModel2 = createModel(context, () => BlogReadNextModel());
    blogReadNextModel3 = createModel(context, () => BlogReadNextModel());
    blogReadNextModel4 = createModel(context, () => BlogReadNextModel());
  }

  @override
  void dispose() {
    blogWriterIndicatorModel.dispose();
    blogReadTimeModel.dispose();
    blogReadNextModel1.dispose();
    blogReadNextModel2.dispose();
    blogReadNextModel3.dispose();
    blogReadNextModel4.dispose();
  }
}
