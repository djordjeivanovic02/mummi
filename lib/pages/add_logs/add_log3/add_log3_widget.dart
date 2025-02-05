import '/components/input_controls/buttons/primary_button/primary_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sympthoms/sympthom_widget/sympthom_widget_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_log3_model.dart';
export 'add_log3_model.dart';

class AddLog3Widget extends StatefulWidget {
  const AddLog3Widget({
    super.key,
    String? feelingImage,
  }) : feelingImage = feelingImage ??
            'https://scontent.xx.fbcdn.net/v/t1.15752-9/474814600_587838327501355_3999521845714302049_n.png?_nc_cat=109&ccb=1-7&_nc_sid=0024fc&_nc_ohc=gRPXz9w4DfsQ7kNvgFnSUiQ&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gGPkMd28DrtBxkBw7Q4boJ6VJnwbPOFc5GQCYmqIXFUbw&oe=67C2BCDD';

  final String feelingImage;

  @override
  State<AddLog3Widget> createState() => _AddLog3WidgetState();
}

class _AddLog3WidgetState extends State<AddLog3Widget> {
  late AddLog3Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddLog3Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFF9398E), Color(0xFFF671AC)],
              stops: [0.0, 1.0],
              begin: AlignmentDirectional(0.0, -1.0),
              end: AlignmentDirectional(0, 1.0),
            ),
          ),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _model.addLogPageViewController ??=
                    PageController(initialPage: 0),
                scrollDirection: Axis.horizontal,
                children: [
                  Stack(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: const BoxDecoration(),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 80.0),
                                child: SingleChildScrollView(
                                  primary: false,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 80.0, 0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://scontent.xx.fbcdn.net/v/t1.15752-9/474899035_1360758281769132_8081458168697795439_n.png?_nc_cat=101&ccb=1-7&_nc_sid=0024fc&_nc_ohc=FZfNmujJZ0gQ7kNvgHv1xpU&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gFyV00-n6-7C36sEqHDbLteY67njWqo8zDBAmLU5ATmeQ&oe=67C2EA6A',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: Text(
                                          'Are you experiencing any symptoms?',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .headlineMedium
                                              .override(
                                                fontFamily: 'Quicksand',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                fontSize: 28.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 30.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.sympthomWidgetModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const SympthomWidgetWidget(
                                            title: 'Head',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.sympthomWidgetModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const SympthomWidgetWidget(
                                            title: 'Breast',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.sympthomWidgetModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const SympthomWidgetWidget(
                                            title: 'Hips',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.sympthomWidgetModel4,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const SympthomWidgetWidget(
                                            title: 'Lower Abdomen',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.sympthomWidgetModel5,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const SympthomWidgetWidget(
                                            title: 'Pevlic Floor',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.sympthomWidgetModel6,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const SympthomWidgetWidget(
                                            title: 'Legs',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.sympthomWidgetModel7,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const SympthomWidgetWidget(
                                            title: 'Back',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.sympthomWidgetModel8,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const SympthomWidgetWidget(
                                            title: 'Hemorrhoids',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 100.0,
                            decoration: const BoxDecoration(
                              color: Color(0x00FFFFFF),
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 1.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.safePop();
                                    },
                                    child: Container(
                                      height: 42.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.keyboard_backspace_rounded,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        size: 42.0,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.goNamed('Home');
                                    },
                                    child: Container(
                                      width: 42.0,
                                      height: 42.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0x2A000000),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.close_rounded,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        size: 30.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: Container(
                          height: 60.0,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    widget.feelingImage,
                                    height: 55.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: wrapWithModel(
                                  model: _model.primaryButtonModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: PrimaryButtonWidget(
                                    textValue: 'CONTINUE',
                                    disabled: (FFAppState()
                                            .SympthomsSelected
                                            .isNotEmpty) !=
                                        true,
                                    reverseColor: true,
                                    onTap: () async {
                                      context.pushNamed(
                                        'AddLog4',
                                        queryParameters: {
                                          'feelingImage': serializeParam(
                                            widget.feelingImage,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 12.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [],
                  ),
                  const Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
