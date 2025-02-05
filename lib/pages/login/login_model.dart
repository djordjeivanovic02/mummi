import '/components/input_controls/buttons/primary_button/primary_button_widget.dart';
import '/components/input_controls/inputs/main_input_field/main_input_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for EmailField.
  late MainInputFieldModel emailFieldModel;
  // Model for PasswordField.
  late MainInputFieldModel passwordFieldModel;
  // Model for PrimaryButton component.
  late PrimaryButtonModel primaryButtonModel;

  @override
  void initState(BuildContext context) {
    emailFieldModel = createModel(context, () => MainInputFieldModel());
    passwordFieldModel = createModel(context, () => MainInputFieldModel());
    primaryButtonModel = createModel(context, () => PrimaryButtonModel());
  }

  @override
  void dispose() {
    emailFieldModel.dispose();
    passwordFieldModel.dispose();
    primaryButtonModel.dispose();
  }
}
