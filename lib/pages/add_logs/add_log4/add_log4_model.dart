import '/components/input_controls/buttons/primary_button/primary_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_log4_widget.dart' show AddLog4Widget;
import 'package:flutter/material.dart';

class AddLog4Model extends FlutterFlowModel<AddLog4Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for AddLogPageView widget.
  PageController? addLogPageViewController;

  int get addLogPageViewCurrentIndex => addLogPageViewController != null &&
          addLogPageViewController!.hasClients &&
          addLogPageViewController!.page != null
      ? addLogPageViewController!.page!.round()
      : 0;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for PrimaryButton component.
  late PrimaryButtonModel primaryButtonModel;

  @override
  void initState(BuildContext context) {
    primaryButtonModel = createModel(context, () => PrimaryButtonModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    primaryButtonModel.dispose();
  }
}
