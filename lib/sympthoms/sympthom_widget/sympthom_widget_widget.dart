import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sympthoms/sympthoms_card/sympthoms_card_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'sympthom_widget_model.dart';
export 'sympthom_widget_model.dart';

class SympthomWidgetWidget extends StatefulWidget {
  const SympthomWidgetWidget({
    super.key,
    String? title,
  }) : title = title ?? 'Head';

  final String title;

  @override
  State<SympthomWidgetWidget> createState() => _SympthomWidgetWidgetState();
}

class _SympthomWidgetWidgetState extends State<SympthomWidgetWidget> {
  late SympthomWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SympthomWidgetModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.counter = 0;
      safeSetState(() {});
      _model.counter = functions.countSelectedSymptoms(
          FFAppState().SympthomsSelected.toList(), widget.title);
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        _model.showCards = !_model.showCards;
        safeSetState(() {});
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                _model.showCards = !_model.showCards;
                safeSetState(() {});
              },
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: BoxDecoration(
                  color: const Color(0x2AFFFFFF),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      24.0,
                      valueOrDefault<double>(
                        _model.showCards ? 30.0 : 22.0,
                        0.0,
                      ),
                      24.0,
                      valueOrDefault<double>(
                        _model.showCards ? 30.0 : 22.0,
                        0.0,
                      )),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 28.0,
                        decoration: const BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              widget.title,
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Quicksand',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            if (_model.counter != 0)
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  width: 28.0,
                                  height: 28.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(1000.0),
                                  ),
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Text(
                                      _model.counter.toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Quicksand',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      if (!_model.showCards)
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24.0,
                        ),
                      if (_model.showCards)
                        Icon(
                          Icons.keyboard_arrow_up,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24.0,
                        ),
                    ],
                  ),
                ),
              ),
            ),
            if ((_model.showCards == true) && (widget.title == 'Head')
                ? true
                : false)
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      wrapWithModel(
                        model: _model.sympthomsCardModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: SympthomsCardWidget(
                          text: 'Headache',
                          active: functions.checkSympthomSelected(
                              FFAppState().SympthomsSelected.toList(),
                              'Headache'),
                          ontap: () async {
                            if (functions.checkSympthomSelected(
                                FFAppState().SympthomsSelected.toList(),
                                'Headache')) {
                              FFAppState()
                                  .removeFromSympthomsSelected('Headache');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + -1;
                              safeSetState(() {});
                            } else {
                              FFAppState().addToSympthomsSelected('Headache');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + 1;
                              safeSetState(() {});
                            }
                          },
                        ),
                      ),
                      wrapWithModel(
                        model: _model.sympthomsCardModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: SympthomsCardWidget(
                          text: 'Dizziness',
                          active: functions.checkSympthomSelected(
                              FFAppState().SympthomsSelected.toList(),
                              'Dizziness'),
                          ontap: () async {
                            if (functions.checkSympthomSelected(
                                FFAppState().SympthomsSelected.toList(),
                                'Dizziness')) {
                              FFAppState()
                                  .removeFromSympthomsSelected('Dizziness');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + -1;
                              safeSetState(() {});
                            } else {
                              FFAppState().addToSympthomsSelected('Dizziness');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + 1;
                              safeSetState(() {});
                            }
                          },
                        ),
                      ),
                      wrapWithModel(
                        model: _model.sympthomsCardModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: SympthomsCardWidget(
                          text: 'Fiver',
                          active: functions.checkSympthomSelected(
                              FFAppState().SympthomsSelected.toList(), 'Fiver'),
                          ontap: () async {
                            if (functions.checkSympthomSelected(
                                FFAppState().SympthomsSelected.toList(),
                                'Fiver')) {
                              FFAppState().removeFromSympthomsSelected('Fiver');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + -1;
                              safeSetState(() {});
                            } else {
                              FFAppState().addToSympthomsSelected('Fiver');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + 1;
                              safeSetState(() {});
                            }
                          },
                        ),
                      ),
                      wrapWithModel(
                        model: _model.sympthomsCardModel4,
                        updateCallback: () => safeSetState(() {}),
                        child: SympthomsCardWidget(
                          text: 'Lightheadness',
                          active: functions.checkSympthomSelected(
                              FFAppState().SympthomsSelected.toList(),
                              'Lightheadness'),
                          ontap: () async {
                            if (functions.checkSympthomSelected(
                                FFAppState().SympthomsSelected.toList(),
                                'Lightheadness')) {
                              FFAppState()
                                  .removeFromSympthomsSelected('Lightheadness');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + -1;
                              safeSetState(() {});
                            } else {
                              FFAppState()
                                  .addToSympthomsSelected('Lightheadness');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + 1;
                              safeSetState(() {});
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            if ((_model.showCards == true) && (widget.title == 'Breast')
                ? true
                : false)
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      wrapWithModel(
                        model: _model.sympthomsCardModel5,
                        updateCallback: () => safeSetState(() {}),
                        child: SympthomsCardWidget(
                          text: 'Pain',
                          active: functions.checkSympthomSelected(
                              FFAppState().SympthomsSelected.toList(), 'Pain'),
                          ontap: () async {
                            if (functions.checkSympthomSelected(
                                FFAppState().SympthomsSelected.toList(),
                                'Pain')) {
                              FFAppState().removeFromSympthomsSelected('Pain');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + -1;
                              safeSetState(() {});
                            } else {
                              FFAppState().addToSympthomsSelected('Pain');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + 1;
                              safeSetState(() {});
                            }
                          },
                        ),
                      ),
                      wrapWithModel(
                        model: _model.sympthomsCardModel6,
                        updateCallback: () => safeSetState(() {}),
                        child: SympthomsCardWidget(
                          text: 'Refux/Heatburn',
                          active: functions.checkSympthomSelected(
                              FFAppState().SympthomsSelected.toList(),
                              'Refux/Heatburn'),
                          ontap: () async {
                            if (functions.checkSympthomSelected(
                                FFAppState().SympthomsSelected.toList(),
                                'Refux/Heatburn')) {
                              FFAppState().removeFromSympthomsSelected(
                                  'Refux/Heatburn');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + -1;
                              safeSetState(() {});
                            } else {
                              FFAppState()
                                  .addToSympthomsSelected('Refux/Heatburn');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + 1;
                              safeSetState(() {});
                            }
                          },
                        ),
                      ),
                      wrapWithModel(
                        model: _model.sympthomsCardModel7,
                        updateCallback: () => safeSetState(() {}),
                        child: SympthomsCardWidget(
                          text: 'Shortness Of Breath',
                          active: functions.checkSympthomSelected(
                              FFAppState().SympthomsSelected.toList(),
                              'Shortness Of Breath'),
                          ontap: () async {
                            if (functions.checkSympthomSelected(
                                FFAppState().SympthomsSelected.toList(),
                                'Shortness Of Breath')) {
                              FFAppState().removeFromSympthomsSelected(
                                  'Shortness Of Breath');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + -1;
                              safeSetState(() {});
                            } else {
                              FFAppState().addToSympthomsSelected(
                                  'Shortness Of Breath');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + 1;
                              safeSetState(() {});
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            if ((_model.showCards == true) && (widget.title == 'Hips')
                ? true
                : false)
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      wrapWithModel(
                        model: _model.sympthomsCardModel8,
                        updateCallback: () => safeSetState(() {}),
                        child: SympthomsCardWidget(
                          text: 'Hip Pain',
                          active: functions.checkSympthomSelected(
                              FFAppState().SympthomsSelected.toList(),
                              'Hip Pain'),
                          ontap: () async {
                            if (functions.checkSympthomSelected(
                                FFAppState().SympthomsSelected.toList(),
                                'Hip Pain')) {
                              FFAppState()
                                  .removeFromSympthomsSelected('Hip Pain');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + -1;
                              safeSetState(() {});
                            } else {
                              FFAppState().addToSympthomsSelected('Hip Pain');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + 1;
                              safeSetState(() {});
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            if ((_model.showCards == true) && (widget.title == 'Lower Abdomen')
                ? true
                : false)
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      wrapWithModel(
                        model: _model.sympthomsCardModel9,
                        updateCallback: () => safeSetState(() {}),
                        child: SympthomsCardWidget(
                          text: 'Contractions',
                          active: functions.checkSympthomSelected(
                              FFAppState().SympthomsSelected.toList(),
                              'Contractions'),
                          ontap: () async {
                            if (functions.checkSympthomSelected(
                                FFAppState().SympthomsSelected.toList(),
                                'Contractions')) {
                              FFAppState()
                                  .removeFromSympthomsSelected('Contractions');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + -1;
                              safeSetState(() {});
                            } else {
                              FFAppState()
                                  .addToSympthomsSelected('Contractions');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + 1;
                              safeSetState(() {});
                            }
                          },
                        ),
                      ),
                      wrapWithModel(
                        model: _model.sympthomsCardModel10,
                        updateCallback: () => safeSetState(() {}),
                        child: SympthomsCardWidget(
                          text: 'Leak Pee',
                          active: functions.checkSympthomSelected(
                              FFAppState().SympthomsSelected.toList(),
                              'Leak Pee'),
                          ontap: () async {
                            if (functions.checkSympthomSelected(
                                FFAppState().SympthomsSelected.toList(),
                                'Leak Pee')) {
                              FFAppState()
                                  .removeFromSympthomsSelected('Leak Pee');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + -1;
                              safeSetState(() {});
                            } else {
                              FFAppState().addToSympthomsSelected('Leak Pee');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + 1;
                              safeSetState(() {});
                            }
                          },
                        ),
                      ),
                      wrapWithModel(
                        model: _model.sympthomsCardModel11,
                        updateCallback: () => safeSetState(() {}),
                        child: SympthomsCardWidget(
                          text: 'Difficulty peeing',
                          active: functions.checkSympthomSelected(
                              FFAppState().SympthomsSelected.toList(),
                              'Difficulty peeing'),
                          ontap: () async {
                            if (functions.checkSympthomSelected(
                                FFAppState().SympthomsSelected.toList(),
                                'Difficulty peeing')) {
                              FFAppState().removeFromSympthomsSelected(
                                  'Difficulty peeing');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + -1;
                              safeSetState(() {});
                            } else {
                              FFAppState()
                                  .addToSympthomsSelected('Difficulty peeing');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + 1;
                              safeSetState(() {});
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            if ((_model.showCards == true) && (widget.title == 'Pevlic Floor')
                ? true
                : false)
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      wrapWithModel(
                        model: _model.sympthomsCardModel12,
                        updateCallback: () => safeSetState(() {}),
                        child: SympthomsCardWidget(
                          text: 'Varicose veins',
                          active: functions.checkSympthomSelected(
                              FFAppState().SympthomsSelected.toList(),
                              'Varicose veins'),
                          ontap: () async {
                            if (functions.checkSympthomSelected(
                                FFAppState().SympthomsSelected.toList(),
                                'Varicose veins')) {
                              FFAppState().removeFromSympthomsSelected(
                                  'Varicose veins');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + -1;
                              safeSetState(() {});
                            } else {
                              FFAppState()
                                  .addToSympthomsSelected('Varicose veins');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + 1;
                              safeSetState(() {});
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            if ((_model.showCards == true) && (widget.title == 'Legs')
                ? true
                : false)
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      wrapWithModel(
                        model: _model.sympthomsCardModel13,
                        updateCallback: () => safeSetState(() {}),
                        child: SympthomsCardWidget(
                          text: 'Varicose veins',
                          active: functions.checkSympthomSelected(
                              FFAppState().SympthomsSelected.toList(),
                              'Varicose veins 2'),
                          ontap: () async {
                            if (functions.checkSympthomSelected(
                                FFAppState().SympthomsSelected.toList(),
                                'Varicose veins 2')) {
                              FFAppState().removeFromSympthomsSelected(
                                  'Varicose veins 2');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + -1;
                              safeSetState(() {});
                            } else {
                              FFAppState()
                                  .addToSympthomsSelected('Varicose veins 2');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + 1;
                              safeSetState(() {});
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            if ((_model.showCards == true) && (widget.title == 'Back')
                ? true
                : false)
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      wrapWithModel(
                        model: _model.sympthomsCardModel14,
                        updateCallback: () => safeSetState(() {}),
                        child: SympthomsCardWidget(
                          text: 'Back Pain',
                          active: functions.checkSympthomSelected(
                              FFAppState().SympthomsSelected.toList(),
                              'Back Pain'),
                          ontap: () async {
                            if (functions.checkSympthomSelected(
                                FFAppState().SympthomsSelected.toList(),
                                'Back Pain')) {
                              FFAppState()
                                  .removeFromSympthomsSelected('Back Pain');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + -1;
                              safeSetState(() {});
                            } else {
                              FFAppState().addToSympthomsSelected('Back Pain');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + 1;
                              safeSetState(() {});
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            if ((_model.showCards == true) && (widget.title == 'Hemorrhoids')
                ? true
                : false)
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      wrapWithModel(
                        model: _model.sympthomsCardModel15,
                        updateCallback: () => safeSetState(() {}),
                        child: SympthomsCardWidget(
                          text: 'Back Pain',
                          active: functions.checkSympthomSelected(
                              FFAppState().SympthomsSelected.toList(),
                              'Back Pain 2'),
                          ontap: () async {
                            if (functions.checkSympthomSelected(
                                FFAppState().SympthomsSelected.toList(),
                                'Back Pain 2')) {
                              FFAppState()
                                  .removeFromSympthomsSelected('Back Pain 2');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + -1;
                              safeSetState(() {});
                            } else {
                              FFAppState()
                                  .addToSympthomsSelected('Back Pain 2');
                              FFAppState().update(() {});
                              _model.counter = _model.counter + 1;
                              safeSetState(() {});
                            }
                          },
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
