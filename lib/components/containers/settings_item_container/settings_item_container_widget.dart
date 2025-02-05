import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'settings_item_container_model.dart';
export 'settings_item_container_model.dart';

class SettingsItemContainerWidget extends StatefulWidget {
  const SettingsItemContainerWidget({
    super.key,
    this.onTap,
    String? title,
    String? subtitle,
    required this.child,
  })  : title = title ?? 'Tittle',
        subtitle = subtitle ?? 'Subtitle';

  final Future Function()? onTap;
  final String title;
  final String subtitle;
  final Widget Function()? child;

  @override
  State<SettingsItemContainerWidget> createState() =>
      _SettingsItemContainerWidgetState();
}

class _SettingsItemContainerWidgetState
    extends State<SettingsItemContainerWidget> {
  late SettingsItemContainerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsItemContainerModel());

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
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 14.0, 20.0, 14.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Quicksand',
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    widget.subtitle,
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Quicksand',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ].divide(const SizedBox(height: 10.0)),
              ),
            ),
            Builder(builder: (_) {
              return widget.child!();
            }),
          ],
        ),
      ),
    );
  }
}
