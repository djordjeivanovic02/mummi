import '/components/app_bar_widget.dart';
import '/components/daily_log_widget_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'daily_logs_model.dart';
export 'daily_logs_model.dart';

class DailyLogsWidget extends StatefulWidget {
  const DailyLogsWidget({super.key});

  @override
  State<DailyLogsWidget> createState() => _DailyLogsWidgetState();
}

class _DailyLogsWidgetState extends State<DailyLogsWidget> {
  late DailyLogsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DailyLogsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 140.0, 20.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).info,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: FFAppConstants.blur.toDouble(),
                                    color: FFAppConstants.shadowColor,
                                    offset: Offset(
                                      FFAppConstants.shadowX.toDouble(),
                                      FFAppConstants.shadowY.toDouble(),
                                    ),
                                    spreadRadius:
                                        FFAppConstants.spread.toDouble(),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    46.0, 20.0, 46.0, 20.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            '10',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  fontFamily: 'Quicksand',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          Text(
                                            'Health logs',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Quicksand',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            '21',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  fontFamily: 'Quicksand',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          Text(
                                            'Feeding logs',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Quicksand',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 17.0)),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 50.0, 20.0, 0.0),
                            child: wrapWithModel(
                              model: _model.dailyLogWidgetModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: DailyLogWidgetWidget(
                                date: 12,
                                month: 'JUN',
                                title: 'I felt good today',
                                days: '2 days ago',
                                feeling: 8.0,
                                description:
                                    'Today I felt like this and this...',
                                hightlights: _model.hightlights,
                                symptoms: _model.simptoms,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 32.0, 20.0, 0.0),
                            child: wrapWithModel(
                              model: _model.dailyLogWidgetModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: DailyLogWidgetWidget(
                                date: 9,
                                month: 'SEP',
                                title: 'I felt good today',
                                days: '2 month ago',
                                feeling: 4.0,
                                description:
                                    'Today I felt like this and this...',
                                hightlights: _model.hightlights,
                                symptoms: _model.simptoms,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 32.0, 20.0, 0.0),
                            child: wrapWithModel(
                              model: _model.dailyLogWidgetModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: DailyLogWidgetWidget(
                                date: 16,
                                month: 'OCT',
                                title: 'I felt good today',
                                days: '5 days ago',
                                feeling: 6.0,
                                description:
                                    'Today I felt like this and this...',
                                hightlights: _model.hightlights,
                                symptoms: _model.simptoms,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.appBarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: AppBarWidget(
                      leadingIcon: const Icon(
                        Icons.keyboard_backspace,
                        size: 30.0,
                      ),
                      title: 'Daily Log',
                      showProfile: true,
                      action: () async {
                        context.safePop();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
