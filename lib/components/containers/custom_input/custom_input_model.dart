import '/flutter_flow/flutter_flow_util.dart';
import 'custom_input_widget.dart' show CustomInputWidget;
import 'package:flutter/material.dart';

class CustomInputModel extends FlutterFlowModel<CustomInputWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for SignInEmail widget.
  FocusNode? signInEmailFocusNode;
  TextEditingController? signInEmailTextController;
  String? Function(BuildContext, String?)? signInEmailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    signInEmailFocusNode?.dispose();
    signInEmailTextController?.dispose();
  }
}
