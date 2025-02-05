import '/components/input_controls/buttons/hero_button/hero_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'hero_top_widget_model.dart';
export 'hero_top_widget_model.dart';

class HeroTopWidgetWidget extends StatefulWidget {
  const HeroTopWidgetWidget({
    super.key,
    String? image,
    String? title,
    String? description,
    Color? buttonColor,
    String? buttonText,
  })  : image = image ??
            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/mummi-2i78ip/assets/09rl8svgrsfw/HeroImage1.svg',
        title = title ?? 'Stay healty',
        description = description ?? 'Let\'s do daily health checkup.',
        buttonColor = buttonColor ?? const Color(0xFFF67C30),
        buttonText = buttonText ?? 'Daily Log';

  final String image;
  final String title;
  final String description;
  final Color buttonColor;
  final String buttonText;

  @override
  State<HeroTopWidgetWidget> createState() => _HeroTopWidgetWidgetState();
}

class _HeroTopWidgetWidgetState extends State<HeroTopWidgetWidget> {
  late HeroTopWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeroTopWidgetModel());

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
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                widget.image,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Quicksand',
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  widget.description,
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Quicksand',
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ].divide(const SizedBox(height: 8.0)),
            ),
            wrapWithModel(
              model: _model.heroButtonModel,
              updateCallback: () => safeSetState(() {}),
              child: HeroButtonWidget(
                backgroundColor: widget.buttonColor,
                text: widget.buttonText,
                ontap: () async {},
              ),
            ),
          ].divide(const SizedBox(height: 15.0)),
        ),
      ),
    );
  }
}
