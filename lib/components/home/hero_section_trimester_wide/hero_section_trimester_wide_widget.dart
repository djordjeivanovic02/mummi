import '/components/input_controls/buttons/hero_button/hero_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'hero_section_trimester_wide_model.dart';
export 'hero_section_trimester_wide_model.dart';

class HeroSectionTrimesterWideWidget extends StatefulWidget {
  const HeroSectionTrimesterWideWidget({
    super.key,
    this.image,
    this.title,
    this.description,
    this.buttonColor,
    this.buttonText,
    Color? backgroundColor,
  }) : backgroundColor = backgroundColor ?? const Color(0xFFA8CEFF);

  final String? image;
  final String? title;
  final String? description;
  final Color? buttonColor;
  final String? buttonText;
  final Color backgroundColor;

  @override
  State<HeroSectionTrimesterWideWidget> createState() =>
      _HeroSectionTrimesterWideWidgetState();
}

class _HeroSectionTrimesterWideWidgetState
    extends State<HeroSectionTrimesterWideWidget> {
  late HeroSectionTrimesterWideModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeroSectionTrimesterWideModel());

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
      height: 150.0,
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          widget.backgroundColor,
          FlutterFlowTheme.of(context).blueLight,
        ),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.none,
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  image: Image.network(
                    '',
                  ).image,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  valueOrDefault<String>(
                    widget.image,
                    'https://scontent.xx.fbcdn.net/v/t1.15752-9/474827508_986343366719896_909951439796674415_n.png?_nc_cat=106&ccb=1-7&_nc_sid=0024fc&_nc_ohc=doFBUZF9MlYQ7kNvgE3jshy&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gF9Nd9WGhPQEOUo6JFG4V0YsJSjhOR1_XC18uvcXH4Feg&oe=67C0ABDB',
                  ),
                  height: 100.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.67,
                height: 100.0,
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        widget.title,
                        'Is the baby there?',
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Quicksand',
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                          ),
                    ),
                    if (widget.description == null || widget.description == ''
                        ? false
                        : true)
                      Text(
                        valueOrDefault<String>(
                          widget.description,
                          'Do workouts regularly to improve health.',
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Quicksand',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: wrapWithModel(
                        model: _model.heroButtonModel,
                        updateCallback: () => safeSetState(() {}),
                        child: HeroButtonWidget(
                          backgroundColor: widget.buttonColor!,
                          text: widget.buttonText!,
                          ontap: () async {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
