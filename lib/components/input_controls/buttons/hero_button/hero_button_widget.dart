import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'hero_button_model.dart';
export 'hero_button_model.dart';

class HeroButtonWidget extends StatefulWidget {
  const HeroButtonWidget({
    super.key,
    required this.backgroundColor,
    required this.text,
    this.ontap,
  });

  final Color? backgroundColor;
  final String? text;
  final Future Function()? ontap;

  @override
  State<HeroButtonWidget> createState() => _HeroButtonWidgetState();
}

class _HeroButtonWidgetState extends State<HeroButtonWidget> {
  late HeroButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeroButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
      child: FFButtonWidget(
        onPressed: () async {
          HapticFeedback.heavyImpact();
          await widget.ontap?.call();
        },
        text: widget.text!,
        options: FFButtonOptions(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 11.0, 20.0, 12.0),
          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: widget.backgroundColor,
          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'Quicksand',
                color: Colors.white,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
              ),
          elevation: 0.0,
          borderRadius: BorderRadius.circular(1000.0),
        ),
      ),
    );
  }
}
