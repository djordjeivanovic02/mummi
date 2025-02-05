import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'blog_writer_indicator_model.dart';
export 'blog_writer_indicator_model.dart';

class BlogWriterIndicatorWidget extends StatefulWidget {
  const BlogWriterIndicatorWidget({
    super.key,
    this.image,
    this.fullName,
  });

  final String? image;
  final String? fullName;

  @override
  State<BlogWriterIndicatorWidget> createState() =>
      _BlogWriterIndicatorWidgetState();
}

class _BlogWriterIndicatorWidgetState extends State<BlogWriterIndicatorWidget> {
  late BlogWriterIndicatorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlogWriterIndicatorModel());

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
        color: FlutterFlowTheme.of(context).peachDark,
        borderRadius: BorderRadius.circular(1000.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                widget.image!,
                width: 35.0,
                height: 35.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  widget.fullName,
                  'Jana Dacovic',
                ),
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Quicksand',
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
