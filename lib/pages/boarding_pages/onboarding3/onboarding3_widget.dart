import '/components/input_controls/buttons/primary_button/primary_button_widget.dart';
import '/components/onboarding_answer_widget.dart';
import '/components/onboarding_progres_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'onboarding3_model.dart';
export 'onboarding3_model.dart';

class Onboarding3Widget extends StatefulWidget {
  const Onboarding3Widget({super.key});

  @override
  State<Onboarding3Widget> createState() => _Onboarding3WidgetState();
}

class _Onboarding3WidgetState extends State<Onboarding3Widget> {
  late Onboarding3Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Onboarding3Model());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.keyboard_backspace_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              if (_model.currentPage > 1) {
                _model.currentPage = _model.currentPage + -1;
                _model.progress = _model.progress! + -0.2;
                safeSetState(() {});
              } else {
                context.pushNamed('onboarding2');
              }
            },
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        wrapWithModel(
                          model: _model.onboardingProgresBarModel,
                          updateCallback: () => safeSetState(() {}),
                          child: OnboardingProgresBarWidget(
                            value: _model.progress!,
                          ),
                        ),
                        if (_model.currentPage == 1)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 16.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Tell me about yourself',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Quicksand',
                                          fontSize: 28.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: Container(
                                      constraints: const BoxConstraints(
                                        maxWidth: 240.0,
                                      ),
                                      decoration: const BoxDecoration(),
                                      child: Text(
                                        'How do you want me to call you?',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Quicksand',
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 32.0, 0.0, 0.0),
                                    child: SizedBox(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      child: TextFormField(
                                        controller: _model.textController,
                                        focusNode: _model.textFieldFocusNode,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Quicksand',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                          hintText: 'Full Name',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Quicksand',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          contentPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 20.0, 20.0, 20.0),
                                          prefixIcon: Icon(
                                            Icons.drive_file_rename_outline,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 22.0,
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Quicksand',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        validator: _model
                                            .textControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        if (_model.currentPage == 2)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 16.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    constraints: const BoxConstraints(
                                      maxWidth: 330.0,
                                    ),
                                    decoration: const BoxDecoration(),
                                    child: Text(
                                      'Has the baby arrived yet?',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            fontFamily: 'Quicksand',
                                            fontSize: 28.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 32.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.onboardingAnswerModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: OnboardingAnswerWidget(
                                        text: 'Yes',
                                        icon: Icon(
                                          Icons.done_all_rounded,
                                          color: _model.babyArrived == 1
                                              ? Colors.white
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                        ),
                                        selected: _model.babyArrived == 1,
                                        onTap: () async {
                                          if (_model.babyArrived == 1) {
                                            _model.babyArrived = 0;
                                            safeSetState(() {});
                                          } else {
                                            _model.babyArrived = 1;
                                            safeSetState(() {});
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.onboardingAnswerModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: OnboardingAnswerWidget(
                                        text: 'No',
                                        icon: Icon(
                                          Icons.not_interested_outlined,
                                          color: _model.babyArrived == 2
                                              ? Colors.white
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                        ),
                                        selected: _model.babyArrived == 2,
                                        onTap: () async {
                                          if (_model.babyArrived == 2) {
                                            _model.babyArrived = 0;
                                            safeSetState(() {});
                                          } else {
                                            _model.babyArrived = 2;
                                            safeSetState(() {});
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        if (_model.currentPage == 3)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 16.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    constraints: const BoxConstraints(
                                      maxWidth: 330.0,
                                    ),
                                    decoration: const BoxDecoration(),
                                    child: Text(
                                      _model.babyArrived == 1
                                          ? 'Add child’s birthday'
                                          : 'What is the expected due date?',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            fontFamily: 'Quicksand',
                                            fontSize: 28.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 32.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        final datePickedDate =
                                            await showDatePicker(
                                          context: context,
                                          initialDate: getCurrentTimestamp,
                                          firstDate: DateTime(1900),
                                          lastDate: DateTime(2050),
                                          builder: (context, child) {
                                            return wrapInMaterialDatePickerTheme(
                                              context,
                                              child!,
                                              headerBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              headerForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              headerTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLarge
                                                      .override(
                                                        fontFamily: 'Quicksand',
                                                        fontSize: 32.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                              pickerBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              pickerForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              selectedDateTimeBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              selectedDateTimeForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              actionButtonForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              iconSize: 24.0,
                                            );
                                          },
                                        );

                                        if (datePickedDate != null) {
                                          safeSetState(() {
                                            _model.datePicked = DateTime(
                                              datePickedDate.year,
                                              datePickedDate.month,
                                              datePickedDate.day,
                                            );
                                          });
                                        }
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          border: Border.all(
                                            color: _model.datePicked != null
                                                ? FlutterFlowTheme.of(context)
                                                    .primaryText
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 15.0, 20.0, 15.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.date_range_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    dateTimeFormat("dd/MM/yyyy",
                                                        _model.datePicked),
                                                    '1/23/2025',
                                                  ),
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .override(
                                                            fontFamily:
                                                                'Quicksand',
                                                            color: _model
                                                                        .datePicked !=
                                                                    null
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        if (_model.currentPage == 4)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 16.0),
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    constraints: const BoxConstraints(
                                      maxWidth: 330.0,
                                    ),
                                    decoration: const BoxDecoration(),
                                    child: Text(
                                      'What’s your goal in using the app?',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            fontFamily: 'Quicksand',
                                            fontSize: 28.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 32.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.onboardingAnswerModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: OnboardingAnswerWidget(
                                        text: 'Prepare for birth',
                                        icon: Icon(
                                          Icons.child_friendly_outlined,
                                          color: functions
                                                  .checkIsOnBoardingGoalSelected(
                                                      _model.goals.toList(), 1)
                                              ? Colors.white
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                        ),
                                        selected: functions
                                            .checkIsOnBoardingGoalSelected(
                                                _model.goals.toList(), 1),
                                        onTap: () async {
                                          if (functions
                                              .checkIsOnBoardingGoalSelected(
                                                  _model.goals.toList(), 1)) {
                                            _model.removeFromGoals(1);
                                            safeSetState(() {});
                                          } else {
                                            _model.removeFromGoals(7);
                                            safeSetState(() {});
                                            _model.addToGoals(1);
                                            safeSetState(() {});
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.onboardingAnswerModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: OnboardingAnswerWidget(
                                        text: 'Streghten my pelvic floor',
                                        icon: Icon(
                                          Icons.fitness_center,
                                          color: functions
                                                  .checkIsOnBoardingGoalSelected(
                                                      _model.goals.toList(), 2)
                                              ? Colors.white
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                        ),
                                        selected: functions
                                            .checkIsOnBoardingGoalSelected(
                                                _model.goals.toList(), 2),
                                        onTap: () async {
                                          if (functions
                                              .checkIsOnBoardingGoalSelected(
                                                  _model.goals.toList(), 2)) {
                                            _model.removeFromGoals(2);
                                            safeSetState(() {});
                                          } else {
                                            _model.removeFromGoals(7);
                                            safeSetState(() {});
                                            _model.addToGoals(2);
                                            safeSetState(() {});
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.onboardingAnswerModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      child: OnboardingAnswerWidget(
                                        text: 'Track health',
                                        icon: Icon(
                                          Icons.monitor_heart_outlined,
                                          color: functions
                                                  .checkIsOnBoardingGoalSelected(
                                                      _model.goals.toList(), 3)
                                              ? Colors.white
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                        ),
                                        selected: functions
                                            .checkIsOnBoardingGoalSelected(
                                                _model.goals.toList(), 3),
                                        onTap: () async {
                                          if (functions
                                              .checkIsOnBoardingGoalSelected(
                                                  _model.goals.toList(), 3)) {
                                            _model.removeFromGoals(3);
                                            safeSetState(() {});
                                          } else {
                                            _model.removeFromGoals(7);
                                            safeSetState(() {});
                                            _model.addToGoals(3);
                                            safeSetState(() {});
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.onboardingAnswerModel6,
                                      updateCallback: () => safeSetState(() {}),
                                      child: OnboardingAnswerWidget(
                                        text: 'Discover symptoms of depression',
                                        icon: Icon(
                                          Icons.smart_toy,
                                          color: functions
                                                  .checkIsOnBoardingGoalSelected(
                                                      _model.goals.toList(), 4)
                                              ? Colors.white
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                        ),
                                        selected: functions
                                            .checkIsOnBoardingGoalSelected(
                                                _model.goals.toList(), 4),
                                        onTap: () async {
                                          if (functions
                                              .checkIsOnBoardingGoalSelected(
                                                  _model.goals.toList(), 4)) {
                                            _model.removeFromGoals(4);
                                            safeSetState(() {});
                                          } else {
                                            _model.removeFromGoals(7);
                                            safeSetState(() {});
                                            _model.addToGoals(4);
                                            safeSetState(() {});
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.onboardingAnswerModel7,
                                      updateCallback: () => safeSetState(() {}),
                                      child: OnboardingAnswerWidget(
                                        text: 'Workouts',
                                        icon: Icon(
                                          Icons.fitness_center,
                                          color: functions
                                                  .checkIsOnBoardingGoalSelected(
                                                      _model.goals.toList(), 5)
                                              ? Colors.white
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                        ),
                                        selected: functions
                                            .checkIsOnBoardingGoalSelected(
                                                _model.goals.toList(), 5),
                                        onTap: () async {
                                          if (functions
                                              .checkIsOnBoardingGoalSelected(
                                                  _model.goals.toList(), 5)) {
                                            _model.removeFromGoals(5);
                                            safeSetState(() {});
                                          } else {
                                            _model.removeFromGoals(7);
                                            safeSetState(() {});
                                            _model.addToGoals(5);
                                            safeSetState(() {});
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.onboardingAnswerModel8,
                                      updateCallback: () => safeSetState(() {}),
                                      child: OnboardingAnswerWidget(
                                        text: 'Learn about postpartum',
                                        icon: Icon(
                                          Icons.menu_book_sharp,
                                          color: functions
                                                  .checkIsOnBoardingGoalSelected(
                                                      _model.goals.toList(), 6)
                                              ? Colors.white
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                        ),
                                        selected: functions
                                            .checkIsOnBoardingGoalSelected(
                                                _model.goals.toList(), 6),
                                        onTap: () async {
                                          if (functions
                                              .checkIsOnBoardingGoalSelected(
                                                  _model.goals.toList(), 6)) {
                                            _model.removeFromGoals(6);
                                            safeSetState(() {});
                                          } else {
                                            _model.removeFromGoals(7);
                                            safeSetState(() {});
                                            _model.addToGoals(6);
                                            safeSetState(() {});
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.onboardingAnswerModel9,
                                      updateCallback: () => safeSetState(() {}),
                                      child: OnboardingAnswerWidget(
                                        text: 'Other',
                                        icon: Icon(
                                          Icons.not_interested,
                                          color: functions
                                                  .checkIsOnBoardingGoalSelected(
                                                      _model.goals.toList(), 7)
                                              ? Colors.white
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                        ),
                                        selected: functions
                                            .checkIsOnBoardingGoalSelected(
                                                _model.goals.toList(), 7),
                                        onTap: () async {
                                          if (functions
                                              .checkIsOnBoardingGoalSelected(
                                                  _model.goals.toList(), 7)) {
                                            _model.removeFromGoals(7);
                                            safeSetState(() {});
                                          } else {
                                            _model.goals = [];
                                            safeSetState(() {});
                                            _model.addToGoals(7);
                                            safeSetState(() {});
                                          }
                                        },
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
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.75,
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: wrapWithModel(
                      model: _model.primaryButtonModel,
                      updateCallback: () => safeSetState(() {}),
                      child: PrimaryButtonWidget(
                        textValue: 'CONTINUE',
                        disabled: functions.checkIsButtonDisabled(
                            _model.currentPage,
                            _model.textController.text,
                            _model.babyArrived,
                            _model.goals.toList(),
                            _model.datePicked != null),
                        onTap: () async {
                          if (_model.currentPage < 4) {
                            _model.currentPage = _model.currentPage + 1;
                            _model.progress = _model.progress! + 0.2;
                            safeSetState(() {});
                          } else {
                            context.pushNamed('onboarding4');
                          }
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
