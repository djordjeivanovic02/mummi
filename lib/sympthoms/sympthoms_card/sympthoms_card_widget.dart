import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'sympthoms_card_model.dart';
export 'sympthoms_card_model.dart';

class SympthomsCardWidget extends StatefulWidget {
  const SympthomsCardWidget({
    super.key,
    String? text,
    this.active,
    this.ontap,
  }) : text = text ?? 'Headache';

  final String text;
  final bool? active;
  final Future Function()? ontap;

  @override
  State<SympthomsCardWidget> createState() => _SympthomsCardWidgetState();
}

class _SympthomsCardWidgetState extends State<SympthomsCardWidget> {
  late SympthomsCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SympthomsCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        await widget.ontap?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: widget.active!
              ? FlutterFlowTheme.of(context).info
              : Colors.transparent,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text(
            widget.text,
            style: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: 'Quicksand',
                  color: widget.active!
                      ? FlutterFlowTheme.of(context).primary
                      : FlutterFlowTheme.of(context).info,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    );
  }
}
