import '/components/input_controls/buttons/primary_button/primary_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sympthoms/sympthom_widget/sympthom_widget_widget.dart';
import 'add_log3_widget.dart' show AddLog3Widget;
import 'package:flutter/material.dart';

class AddLog3Model extends FlutterFlowModel<AddLog3Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for AddLogPageView widget.
  PageController? addLogPageViewController;

  int get addLogPageViewCurrentIndex => addLogPageViewController != null &&
          addLogPageViewController!.hasClients &&
          addLogPageViewController!.page != null
      ? addLogPageViewController!.page!.round()
      : 0;
  // Model for SympthomWidget component.
  late SympthomWidgetModel sympthomWidgetModel1;
  // Model for SympthomWidget component.
  late SympthomWidgetModel sympthomWidgetModel2;
  // Model for SympthomWidget component.
  late SympthomWidgetModel sympthomWidgetModel3;
  // Model for SympthomWidget component.
  late SympthomWidgetModel sympthomWidgetModel4;
  // Model for SympthomWidget component.
  late SympthomWidgetModel sympthomWidgetModel5;
  // Model for SympthomWidget component.
  late SympthomWidgetModel sympthomWidgetModel6;
  // Model for SympthomWidget component.
  late SympthomWidgetModel sympthomWidgetModel7;
  // Model for SympthomWidget component.
  late SympthomWidgetModel sympthomWidgetModel8;
  // Model for PrimaryButton component.
  late PrimaryButtonModel primaryButtonModel;

  @override
  void initState(BuildContext context) {
    sympthomWidgetModel1 = createModel(context, () => SympthomWidgetModel());
    sympthomWidgetModel2 = createModel(context, () => SympthomWidgetModel());
    sympthomWidgetModel3 = createModel(context, () => SympthomWidgetModel());
    sympthomWidgetModel4 = createModel(context, () => SympthomWidgetModel());
    sympthomWidgetModel5 = createModel(context, () => SympthomWidgetModel());
    sympthomWidgetModel6 = createModel(context, () => SympthomWidgetModel());
    sympthomWidgetModel7 = createModel(context, () => SympthomWidgetModel());
    sympthomWidgetModel8 = createModel(context, () => SympthomWidgetModel());
    primaryButtonModel = createModel(context, () => PrimaryButtonModel());
  }

  @override
  void dispose() {
    sympthomWidgetModel1.dispose();
    sympthomWidgetModel2.dispose();
    sympthomWidgetModel3.dispose();
    sympthomWidgetModel4.dispose();
    sympthomWidgetModel5.dispose();
    sympthomWidgetModel6.dispose();
    sympthomWidgetModel7.dispose();
    sympthomWidgetModel8.dispose();
    primaryButtonModel.dispose();
  }
}
