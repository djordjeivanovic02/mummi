import '/flutter_flow/flutter_flow_util.dart';
import 'main_input_field_widget.dart' show MainInputFieldWidget;
import 'package:flutter/material.dart';

class MainInputFieldModel extends FlutterFlowModel<MainInputFieldWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for IconAndText widget.
  FocusNode? iconAndTextFocusNode;
  TextEditingController? iconAndTextTextController;
  String? Function(BuildContext, String?)? iconAndTextTextControllerValidator;
  // State field(s) for IconAndPassword widget.
  FocusNode? iconAndPasswordFocusNode;
  TextEditingController? iconAndPasswordTextController;
  late bool iconAndPasswordVisibility;
  String? Function(BuildContext, String?)?
      iconAndPasswordTextControllerValidator;
  // State field(s) for NoIconAndText widget.
  FocusNode? noIconAndTextFocusNode;
  TextEditingController? noIconAndTextTextController;
  String? Function(BuildContext, String?)? noIconAndTextTextControllerValidator;
  // State field(s) for NoIconAndPassword widget.
  FocusNode? noIconAndPasswordFocusNode;
  TextEditingController? noIconAndPasswordTextController;
  late bool noIconAndPasswordVisibility;
  String? Function(BuildContext, String?)?
      noIconAndPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    iconAndPasswordVisibility = false;
    noIconAndPasswordVisibility = false;
  }

  @override
  void dispose() {
    iconAndTextFocusNode?.dispose();
    iconAndTextTextController?.dispose();

    iconAndPasswordFocusNode?.dispose();
    iconAndPasswordTextController?.dispose();

    noIconAndTextFocusNode?.dispose();
    noIconAndTextTextController?.dispose();

    noIconAndPasswordFocusNode?.dispose();
    noIconAndPasswordTextController?.dispose();
  }
}
