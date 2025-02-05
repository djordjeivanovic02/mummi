import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'hero_section_trimester_model.dart';
export 'hero_section_trimester_model.dart';

class HeroSectionTrimesterWidget extends StatefulWidget {
  const HeroSectionTrimesterWidget({
    super.key,
    this.image,
    this.title,
    this.description,
    this.ontap,
  });

  final String? image;
  final String? title;
  final String? description;
  final Future Function()? ontap;

  @override
  State<HeroSectionTrimesterWidget> createState() =>
      _HeroSectionTrimesterWidgetState();
}

class _HeroSectionTrimesterWidgetState
    extends State<HeroSectionTrimesterWidget> {
  late HeroSectionTrimesterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeroSectionTrimesterModel());

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
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(0.0),
              ),
              child: Image.network(
                widget.image!,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                child: Container(
                  constraints: const BoxConstraints(
                    maxWidth: 180.0,
                  ),
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget.title,
                          'Learn more about the third trimester',
                        ),
                        style: FlutterFlowTheme.of(context)
                            .titleMedium
                            .override(
                              fontFamily: 'Quicksand',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                            ),
                      ),
                      if (widget.description == null ||
                              widget.description == ''
                          ? false
                          : true)
                        Text(
                          valueOrDefault<String>(
                            widget.description,
                            'None',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Quicksand',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            FlutterFlowIconButton(
              borderRadius: 1000.0,
              buttonSize: 40.0,
              fillColor: Colors.white,
              icon: Icon(
                Icons.navigate_next_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
              onPressed: () async {
                await widget.ontap?.call();
              },
            ),
          ],
        ),
      ),
    );
  }
}
