import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SignInEmail widget.
  FocusNode? signInEmailFocusNode;
  TextEditingController? signInEmailTextController;
  String? Function(BuildContext, String?)? signInEmailTextControllerValidator;
  // State field(s) for SignInPassword widget.
  FocusNode? signInPasswordFocusNode;
  TextEditingController? signInPasswordTextController;
  late bool signInPasswordVisibility;
  String? Function(BuildContext, String?)?
      signInPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    signInPasswordVisibility = false;
  }

  @override
  void dispose() {
    signInEmailFocusNode?.dispose();
    signInEmailTextController?.dispose();

    signInPasswordFocusNode?.dispose();
    signInPasswordTextController?.dispose();
  }
}
