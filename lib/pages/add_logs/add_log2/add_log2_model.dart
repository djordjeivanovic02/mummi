import '/components/input_controls/buttons/primary_button/primary_button_widget.dart';
import '/components/log_selected_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_log2_widget.dart' show AddLog2Widget;
import 'package:flutter/material.dart';

class AddLog2Model extends FlutterFlowModel<AddLog2Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for AddLogPageView widget.
  PageController? addLogPageViewController;

  int get addLogPageViewCurrentIndex => addLogPageViewController != null &&
          addLogPageViewController!.hasClients &&
          addLogPageViewController!.page != null
      ? addLogPageViewController!.page!.round()
      : 0;
  // Model for LogSelectedItem component.
  late LogSelectedItemModel logSelectedItemModel1;
  // Model for LogSelectedItem component.
  late LogSelectedItemModel logSelectedItemModel2;
  // Model for LogSelectedItem component.
  late LogSelectedItemModel logSelectedItemModel3;
  // Model for LogSelectedItem component.
  late LogSelectedItemModel logSelectedItemModel4;
  // Model for LogSelectedItem component.
  late LogSelectedItemModel logSelectedItemModel5;
  // Model for LogSelectedItem component.
  late LogSelectedItemModel logSelectedItemModel6;
  // Model for LogSelectedItem component.
  late LogSelectedItemModel logSelectedItemModel7;
  // Model for LogSelectedItem component.
  late LogSelectedItemModel logSelectedItemModel8;
  // Model for LogSelectedItem component.
  late LogSelectedItemModel logSelectedItemModel9;
  // Model for LogSelectedItem component.
  late LogSelectedItemModel logSelectedItemModel10;
  // Model for LogSelectedItem component.
  late LogSelectedItemModel logSelectedItemModel11;
  // Model for LogSelectedItem component.
  late LogSelectedItemModel logSelectedItemModel12;
  // Model for PrimaryButton component.
  late PrimaryButtonModel primaryButtonModel;

  @override
  void initState(BuildContext context) {
    logSelectedItemModel1 = createModel(context, () => LogSelectedItemModel());
    logSelectedItemModel2 = createModel(context, () => LogSelectedItemModel());
    logSelectedItemModel3 = createModel(context, () => LogSelectedItemModel());
    logSelectedItemModel4 = createModel(context, () => LogSelectedItemModel());
    logSelectedItemModel5 = createModel(context, () => LogSelectedItemModel());
    logSelectedItemModel6 = createModel(context, () => LogSelectedItemModel());
    logSelectedItemModel7 = createModel(context, () => LogSelectedItemModel());
    logSelectedItemModel8 = createModel(context, () => LogSelectedItemModel());
    logSelectedItemModel9 = createModel(context, () => LogSelectedItemModel());
    logSelectedItemModel10 = createModel(context, () => LogSelectedItemModel());
    logSelectedItemModel11 = createModel(context, () => LogSelectedItemModel());
    logSelectedItemModel12 = createModel(context, () => LogSelectedItemModel());
    primaryButtonModel = createModel(context, () => PrimaryButtonModel());
  }

  @override
  void dispose() {
    logSelectedItemModel1.dispose();
    logSelectedItemModel2.dispose();
    logSelectedItemModel3.dispose();
    logSelectedItemModel4.dispose();
    logSelectedItemModel5.dispose();
    logSelectedItemModel6.dispose();
    logSelectedItemModel7.dispose();
    logSelectedItemModel8.dispose();
    logSelectedItemModel9.dispose();
    logSelectedItemModel10.dispose();
    logSelectedItemModel11.dispose();
    logSelectedItemModel12.dispose();
    primaryButtonModel.dispose();
  }
}
