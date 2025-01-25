import '/flutter_flow/flutter_flow_util.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SignUpEmail widget.
  FocusNode? signUpEmailFocusNode;
  TextEditingController? signUpEmailTextController;
  String? Function(BuildContext, String?)? signUpEmailTextControllerValidator;
  // State field(s) for SignUpPassword widget.
  FocusNode? signUpPasswordFocusNode;
  TextEditingController? signUpPasswordTextController;
  late bool signUpPasswordVisibility;
  String? Function(BuildContext, String?)?
      signUpPasswordTextControllerValidator;
  // State field(s) for SignUpRepeatPassword widget.
  FocusNode? signUpRepeatPasswordFocusNode;
  TextEditingController? signUpRepeatPasswordTextController;
  late bool signUpRepeatPasswordVisibility;
  String? Function(BuildContext, String?)?
      signUpRepeatPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    signUpPasswordVisibility = false;
    signUpRepeatPasswordVisibility = false;
  }

  @override
  void dispose() {
    signUpEmailFocusNode?.dispose();
    signUpEmailTextController?.dispose();

    signUpPasswordFocusNode?.dispose();
    signUpPasswordTextController?.dispose();

    signUpRepeatPasswordFocusNode?.dispose();
    signUpRepeatPasswordTextController?.dispose();
  }
}
