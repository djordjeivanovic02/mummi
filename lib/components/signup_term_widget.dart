import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'signup_term_model.dart';
export 'signup_term_model.dart';

class SignupTermWidget extends StatefulWidget {
  const SignupTermWidget({
    super.key,
    this.icon,
    String? text,
  }) : text = text ??
            'By using the app, you empower you parental journey and contribute to research project on female and postpartum health';

  final Widget? icon;
  final String text;

  @override
  State<SignupTermWidget> createState() => _SignupTermWidgetState();
}

class _SignupTermWidgetState extends State<SignupTermWidget> {
  late SignupTermModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignupTermModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.icon!,
        Expanded(
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
            child: Text(
              widget.text,
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: 'Quicksand',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ),
      ].divide(const SizedBox(width: 5.0)),
    );
  }
}
