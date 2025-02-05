import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'blog_discover_more_model.dart';
export 'blog_discover_more_model.dart';

class BlogDiscoverMoreWidget extends StatefulWidget {
  const BlogDiscoverMoreWidget({
    super.key,
    String? title,
    Color? color,
  })  : title = title ?? 'Pregnancy',
        color = color ?? const Color(0xFFEAC2A9);

  final String title;
  final Color color;

  @override
  State<BlogDiscoverMoreWidget> createState() => _BlogDiscoverMoreWidgetState();
}

class _BlogDiscoverMoreWidgetState extends State<BlogDiscoverMoreWidget> {
  late BlogDiscoverMoreModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlogDiscoverMoreModel());

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
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(8.0),
        ),
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            widget.title,
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Quicksand',
                  color: FlutterFlowTheme.of(context).primaryText,
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
