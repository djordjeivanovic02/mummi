import '/components/input_controls/buttons/hero_button/hero_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'hero_section_week_model.dart';
export 'hero_section_week_model.dart';

class HeroSectionWeekWidget extends StatefulWidget {
  const HeroSectionWeekWidget({
    super.key,
    String? title,
    String? description,
    Color? buttonColor,
    String? buttonText,
    Color? backgroundColor,
    this.image,
  })  : title = title ?? 'Is the baby here?',
        description = description ?? '',
        buttonColor = buttonColor ?? const Color(0xFF308AFF),
        buttonText = buttonText ?? 'Add date',
        backgroundColor = backgroundColor ?? const Color(0xFFA8CEFF);

  final String title;
  final String description;
  final Color buttonColor;
  final String buttonText;
  final Color backgroundColor;
  final String? image;

  @override
  State<HeroSectionWeekWidget> createState() => _HeroSectionWeekWidgetState();
}

class _HeroSectionWeekWidgetState extends State<HeroSectionWeekWidget> {
  late HeroSectionWeekModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeroSectionWeekModel());

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
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (widget.image != null && widget.image != '')
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    widget.image!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    if (widget.description != '')
                      Text(
                        widget.description,
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Quicksand',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                  ].divide(const SizedBox(height: 5.0)),
                ),
              ),
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
          ],
        ),
      ),
    );
  }
}
