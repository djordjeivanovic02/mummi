import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'main_button_model.dart';
export 'main_button_model.dart';

class MainButtonWidget extends StatefulWidget {
  const MainButtonWidget({
    super.key,
    required this.textValue,
    required this.onTap,
    bool? disabled,
    int? padddingInline,
    int? paddingBlock,
    this.icon,
    int? gap,
    Color? backgroundColor,
    Color? color,
    bool? wide,
    required this.variant,
  })  : disabled = disabled ?? true,
        padddingInline = padddingInline ?? 24,
        paddingBlock = paddingBlock ?? 16,
        gap = gap ?? 8,
        backgroundColor = backgroundColor ?? const Color(0xFFE6287C),
        color = color ?? Colors.white,
        wide = wide ?? false;

  final String? textValue;
  final Future Function()? onTap;
  final bool disabled;

  /// left and right padding
  final int padddingInline;

  final int paddingBlock;
  final Widget? icon;
  final int gap;
  final Color backgroundColor;
  final Color color;
  final bool wide;
  final ButtonVariant? variant;

  @override
  State<MainButtonWidget> createState() => _MainButtonWidgetState();
}

class _MainButtonWidgetState extends State<MainButtonWidget> {
  late MainButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainButtonModel());

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
      icon: widget.icon,
      options: FFButtonOptions(
        width: widget.wide ? double.infinity : 0.0,
        padding: EdgeInsetsDirectional.fromSTEB(
            valueOrDefault<double>(
              widget.padddingInline.toDouble(),
              0.0,
            ),
            valueOrDefault<double>(
              widget.paddingBlock.toDouble(),
              0.0,
            ),
            valueOrDefault<double>(
              widget.padddingInline.toDouble(),
              0.0,
            ),
            valueOrDefault<double>(
              widget.paddingBlock.toDouble(),
              0.0,
            )),
        iconPadding: EdgeInsetsDirectional.fromSTEB(
            0.0,
            0.0,
            valueOrDefault<double>(
              widget.gap.toDouble(),
              0.0,
            ),
            0.0),
        color: widget.backgroundColor,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Quicksand',
              color: widget.color,
              fontSize: 14.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.bold,
            ),
        elevation: 0.0,
        borderRadius: BorderRadius.circular(50.0),
        disabledColor: FlutterFlowTheme.of(context).secondaryText,
        disabledTextColor: widget.color,
      ),
      showLoadingIndicator: false,
    );
  }
}
