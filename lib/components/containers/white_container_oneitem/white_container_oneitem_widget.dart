import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'white_container_oneitem_model.dart';
export 'white_container_oneitem_model.dart';

class WhiteContainerOneitemWidget extends StatefulWidget {
  const WhiteContainerOneitemWidget({
    super.key,
    required this.text,
    required this.icon,
    int? iconSize,
    int? gap,
    Color? color,
  })  : iconSize = iconSize ?? 24,
        gap = gap ?? 12,
        color = color ?? const Color(0xFFB30000);

  final String? text;
  final Widget? icon;
  final int iconSize;
  final int gap;
  final Color color;

  @override
  State<WhiteContainerOneitemWidget> createState() =>
      _WhiteContainerOneitemWidgetState();
}

class _WhiteContainerOneitemWidgetState
    extends State<WhiteContainerOneitemWidget> {
  late WhiteContainerOneitemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WhiteContainerOneitemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: FFAppConstants.blur.toDouble(),
            color: FFAppConstants.shadowColor,
            offset: Offset(
              FFAppConstants.shadowX.toDouble(),
              FFAppConstants.shadowY.toDouble(),
            ),
            spreadRadius: FFAppConstants.spread.toDouble(),
          )
        ],
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget.icon!,
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
            child: Text(
              valueOrDefault<String>(
                widget.text,
                'text',
              ),
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Quicksand',
                    color: widget.color,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ].divide(SizedBox(width: widget.gap.toDouble())),
      ),
    );
  }
}
