import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'learn_more_card_model.dart';
export 'learn_more_card_model.dart';

class LearnMoreCardWidget extends StatefulWidget {
  const LearnMoreCardWidget({
    super.key,
    this.backgroundColor,
    String? text,
    Color? textColor,
  })  : text = text ?? 'Pregnancy',
        textColor = textColor ?? Colors.white;

  final Color? backgroundColor;
  final String text;
  final Color textColor;

  @override
  State<LearnMoreCardWidget> createState() => _LearnMoreCardWidgetState();
}

class _LearnMoreCardWidgetState extends State<LearnMoreCardWidget> {
  late LearnMoreCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LearnMoreCardModel());

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
        context.pushNamed('BlogCategory');
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10.0, 28.0, 10.0, 28.0),
          child: Text(
            widget.text,
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Quicksand',
                  color: widget.textColor,
                  fontSize: 21.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ),
    );
  }
}
