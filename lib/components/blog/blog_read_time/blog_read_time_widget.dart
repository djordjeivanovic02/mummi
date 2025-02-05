import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'blog_read_time_model.dart';
export 'blog_read_time_model.dart';

class BlogReadTimeWidget extends StatefulWidget {
  const BlogReadTimeWidget({
    super.key,
    String? mins,
  }) : mins = mins ?? '3 min';

  final String mins;

  @override
  State<BlogReadTimeWidget> createState() => _BlogReadTimeWidgetState();
}

class _BlogReadTimeWidgetState extends State<BlogReadTimeWidget> {
  late BlogReadTimeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlogReadTimeModel());

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
        color: FlutterFlowTheme.of(context).peachLight,
        borderRadius: BorderRadius.circular(1000.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(
              Icons.newspaper,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 25.0,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 0.0),
              child: Text(
                widget.mins,
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Quicksand',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ].divide(const SizedBox(width: 1.0)),
        ),
      ),
    );
  }
}
