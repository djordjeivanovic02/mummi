import '/components/input_controls/buttons/primary_button/primary_button_widget.dart';
import '/components/log_selected_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_log2_model.dart';
export 'add_log2_model.dart';

class AddLog2Widget extends StatefulWidget {
  const AddLog2Widget({
    super.key,
    String? smileImagePath,
  }) : smileImagePath = smileImagePath ??
            'https://scontent.xx.fbcdn.net/v/t1.15752-9/474814600_587838327501355_3999521845714302049_n.png?_nc_cat=109&ccb=1-7&_nc_sid=0024fc&_nc_ohc=gRPXz9w4DfsQ7kNvgFnSUiQ&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gGPkMd28DrtBxkBw7Q4boJ6VJnwbPOFc5GQCYmqIXFUbw&oe=67C2BCDD';

  final String smileImagePath;

  @override
  State<AddLog2Widget> createState() => _AddLog2WidgetState();
}

class _AddLog2WidgetState extends State<AddLog2Widget> {
  late AddLog2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddLog2Model());

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
                                        'What makes you feel that way?',
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
                                          20.0, 30.0, 20.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        decoration: const BoxDecoration(),
                                        child: GridView(
                                          padding: EdgeInsets.zero,
                                          gridDelegate:
                                              const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                            crossAxisSpacing: 10.0,
                                            mainAxisSpacing: 10.0,
                                            childAspectRatio: 1.0,
                                          ),
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .logSelectedItemModel1,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LogSelectedItemWidget(
                                                  icon: Icon(
                                                    Icons.bed_rounded,
                                                    color: functions
                                                            .checkSympthomSelected(
                                                                FFAppState()
                                                                    .FeelingReasons
                                                                    .toList(),
                                                                'Sleep')
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .info,
                                                    size: 32.0,
                                                  ),
                                                  text: 'Sleep',
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .logSelectedItemModel2,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LogSelectedItemWidget(
                                                  icon: Icon(
                                                    Icons.local_pizza_outlined,
                                                    color: functions
                                                            .checkSympthomSelected(
                                                                FFAppState()
                                                                    .FeelingReasons
                                                                    .toList(),
                                                                'Food')
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .info,
                                                    size: 32.0,
                                                  ),
                                                  text: 'Food',
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .logSelectedItemModel3,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LogSelectedItemWidget(
                                                  icon: Icon(
                                                    Icons.home_outlined,
                                                    color: functions
                                                            .checkSympthomSelected(
                                                                FFAppState()
                                                                    .FeelingReasons
                                                                    .toList(),
                                                                'Family')
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .info,
                                                    size: 32.0,
                                                  ),
                                                  text: 'Family',
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .logSelectedItemModel4,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LogSelectedItemWidget(
                                                  icon: Icon(
                                                    Icons.people_outline_sharp,
                                                    color: functions
                                                            .checkSympthomSelected(
                                                                FFAppState()
                                                                    .FeelingReasons
                                                                    .toList(),
                                                                'Friends')
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .info,
                                                    size: 32.0,
                                                  ),
                                                  text: 'Friends',
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .logSelectedItemModel5,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LogSelectedItemWidget(
                                                  icon: Icon(
                                                    Icons.snowing,
                                                    color: functions
                                                            .checkSympthomSelected(
                                                                FFAppState()
                                                                    .FeelingReasons
                                                                    .toList(),
                                                                'Partner')
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .info,
                                                    size: 32.0,
                                                  ),
                                                  text: 'Partner',
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .logSelectedItemModel6,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LogSelectedItemWidget(
                                                  icon: Icon(
                                                    Icons.boy,
                                                    color: functions
                                                            .checkSympthomSelected(
                                                                FFAppState()
                                                                    .FeelingReasons
                                                                    .toList(),
                                                                'My Body')
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .info,
                                                    size: 32.0,
                                                  ),
                                                  text: 'My Body',
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .logSelectedItemModel7,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LogSelectedItemWidget(
                                                  icon: Icon(
                                                    Icons
                                                        .calendar_month_outlined,
                                                    color: functions
                                                            .checkSympthomSelected(
                                                                FFAppState()
                                                                    .FeelingReasons
                                                                    .toList(),
                                                                'My Day')
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .info,
                                                    size: 32.0,
                                                  ),
                                                  text: 'My Day',
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .logSelectedItemModel8,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LogSelectedItemWidget(
                                                  icon: Icon(
                                                    Icons.work_outline,
                                                    color: functions
                                                            .checkSympthomSelected(
                                                                FFAppState()
                                                                    .FeelingReasons
                                                                    .toList(),
                                                                'Work')
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .info,
                                                    size: 32.0,
                                                  ),
                                                  text: 'Work',
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .logSelectedItemModel9,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LogSelectedItemWidget(
                                                  icon: Icon(
                                                    Icons.cloud_queue,
                                                    color: functions
                                                            .checkSympthomSelected(
                                                                FFAppState()
                                                                    .FeelingReasons
                                                                    .toList(),
                                                                'Weather')
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .info,
                                                    size: 32.0,
                                                  ),
                                                  text: 'Weather',
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .logSelectedItemModel10,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LogSelectedItemWidget(
                                                  icon: Icon(
                                                    Icons
                                                        .shopping_cart_outlined,
                                                    color: functions
                                                            .checkSympthomSelected(
                                                                FFAppState()
                                                                    .FeelingReasons
                                                                    .toList(),
                                                                'Shopping')
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .info,
                                                    size: 32.0,
                                                  ),
                                                  text: 'Shopping',
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .logSelectedItemModel11,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LogSelectedItemWidget(
                                                  icon: Icon(
                                                    Icons.bed_rounded,
                                                    color: functions
                                                            .checkSympthomSelected(
                                                                FFAppState()
                                                                    .FeelingReasons
                                                                    .toList(),
                                                                'Sleep2')
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .info,
                                                    size: 32.0,
                                                  ),
                                                  text: 'Sleep2',
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .logSelectedItemModel12,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LogSelectedItemWidget(
                                                  icon: Icon(
                                                    Icons.add_rounded,
                                                    color: functions
                                                            .checkSympthomSelected(
                                                                FFAppState()
                                                                    .FeelingReasons
                                                                    .toList(),
                                                                'Other')
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .info,
                                                    size: 32.0,
                                                  ),
                                                  text: 'Other',
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
                                    valueOrDefault<String>(
                                      widget.smileImagePath,
                                      'https://scontent.xx.fbcdn.net/v/t1.15752-9/474814600_587838327501355_3999521845714302049_n.png?_nc_cat=109&ccb=1-7&_nc_sid=0024fc&_nc_ohc=gRPXz9w4DfsQ7kNvgFnSUiQ&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gGPkMd28DrtBxkBw7Q4boJ6VJnwbPOFc5GQCYmqIXFUbw&oe=67C2BCDD',
                                    ),
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
                                            .FeelingReasons
                                            .isNotEmpty) ==
                                        false,
                                    reverseColor: true,
                                    onTap: () async {
                                      context.pushNamed(
                                        'AddLog3',
                                        queryParameters: {
                                          'feelingImage': serializeParam(
                                            widget.smileImagePath,
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
