import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'hero_section_discover_wide_model.dart';
export 'hero_section_discover_wide_model.dart';

class HeroSectionDiscoverWideWidget extends StatefulWidget {
  const HeroSectionDiscoverWideWidget({
    super.key,
    String? title,
    this.ontap,
  }) : title = title ?? 'Discover more articles';

  final String title;
  final Future Function()? ontap;

  @override
  State<HeroSectionDiscoverWideWidget> createState() =>
      _HeroSectionDiscoverWideWidgetState();
}

class _HeroSectionDiscoverWideWidgetState
    extends State<HeroSectionDiscoverWideWidget> {
  late HeroSectionDiscoverWideModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeroSectionDiscoverWideModel());

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
      width: MediaQuery.sizeOf(context).width * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).peachLight,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: FlutterFlowTheme.of(context).titleMedium.override(
                    fontFamily: 'Quicksand',
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                await widget.ontap?.call();
              },
              child: Container(
                width: 48.0,
                height: 48.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).peachDark,
                  borderRadius: BorderRadius.circular(1999.0),
                ),
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: const Icon(
                  Icons.navigate_next_rounded,
                  color: Colors.white,
                  size: 36.0,
                ),
              ),
            ),
          ].divide(const SizedBox(width: 10.0)),
        ),
      ),
    );
  }
}
