import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'primary_button_model.dart';
export 'primary_button_model.dart';

class PrimaryButtonWidget extends StatefulWidget {
  const PrimaryButtonWidget({
    super.key,
    required this.textValue,
    required this.onTap,
    bool? disabled,
    bool? reverseColor,
  })  : disabled = disabled ?? true,
        reverseColor = reverseColor ?? false;

  final String? textValue;
  final Future Function()? onTap;
  final bool disabled;
  final bool reverseColor;

  @override
  State<PrimaryButtonWidget> createState() => _PrimaryButtonWidgetState();
}

class _PrimaryButtonWidgetState extends State<PrimaryButtonWidget> {
  late PrimaryButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrimaryButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: widget.disabled
          ? null
          : () async {
              await widget.onTap?.call();
            },
      text: widget.textValue!,
      options: FFButtonOptions(
        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 18.0, 24.0, 18.0),
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: widget.reverseColor
            ? FlutterFlowTheme.of(context).info
            : FlutterFlowTheme.of(context).primary,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Quicksand',
              color: widget.reverseColor
                  ? FlutterFlowTheme.of(context).primary
                  : FlutterFlowTheme.of(context).info,
              fontSize: 14.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.bold,
            ),
        elevation: 0.0,
        borderRadius: BorderRadius.circular(50.0),
        disabledColor: FlutterFlowTheme.of(context).secondaryText,
        disabledTextColor: Colors.white,
      ),
      showLoadingIndicator: false,
    );
  }
}
