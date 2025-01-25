import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'secondary_button_model.dart';
export 'secondary_button_model.dart';

class SecondaryButtonWidget extends StatefulWidget {
  const SecondaryButtonWidget({
    super.key,
    required this.textValue,
  });

  final String? textValue;

  @override
  State<SecondaryButtonWidget> createState() => _SecondaryButtonWidgetState();
}

class _SecondaryButtonWidgetState extends State<SecondaryButtonWidget> {
  late SecondaryButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SecondaryButtonModel());

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
      onPressed: () {
        print('Button pressed ...');
      },
      text: widget.textValue!,
      options: FFButtonOptions(
        width: MediaQuery.sizeOf(context).width * 0.75,
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 24.0),
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: const Color(0x00E6287C),
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Quicksand',
              color: FlutterFlowTheme.of(context).primary,
              fontSize: 14.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.bold,
            ),
        elevation: 0.0,
        borderSide: BorderSide(
          color: FlutterFlowTheme.of(context).primary,
        ),
        borderRadius: BorderRadius.circular(50.0),
      ),
    );
  }
}
