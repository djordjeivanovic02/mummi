import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'log_selected_item_model.dart';
export 'log_selected_item_model.dart';

class LogSelectedItemWidget extends StatefulWidget {
  const LogSelectedItemWidget({
    super.key,
    this.icon,
    String? text,
  }) : text = text ?? 'Sleep';

  final Widget? icon;
  final String text;

  @override
  State<LogSelectedItemWidget> createState() => _LogSelectedItemWidgetState();
}

class _LogSelectedItemWidgetState extends State<LogSelectedItemWidget> {
  late LogSelectedItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogSelectedItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          HapticFeedback.selectionClick();
          if (widget.text == 'Other') {
            if (FFAppState().FeelingReasons.contains(widget.text)) {
              FFAppState().removeFromFeelingReasons(widget.text);
              FFAppState().update(() {});
            } else {
              FFAppState().FeelingReasons = [];
              FFAppState().update(() {});
              FFAppState().addToFeelingReasons(widget.text);
              FFAppState().update(() {});
            }
          } else {
            if (FFAppState().FeelingReasons.contains(widget.text)) {
              FFAppState().removeFromFeelingReasons(widget.text);
              FFAppState().update(() {});
            } else {
              FFAppState().removeFromFeelingReasons('Other');
              FFAppState().update(() {});
              FFAppState().addToFeelingReasons(widget.text);
              FFAppState().update(() {});
            }
          }
        },
        child: Container(
          width: 120.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: FFAppState().FeelingReasons.contains(widget.text) == true
                ? FlutterFlowTheme.of(context).info
                : const Color(0x00E6287C),
            borderRadius: BorderRadius.circular(16.0),
          ),
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.icon!,
              Text(
                widget.text,
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Quicksand',
                      color:
                          FFAppState().FeelingReasons.contains(widget.text) ==
                                  true
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).info,
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
