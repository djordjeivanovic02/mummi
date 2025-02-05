import '/components/app_bar_widget.dart';
import '/components/home/hero_section_daily_article/hero_section_daily_article_widget.dart';
import '/components/home/hero_section_discover_wide/hero_section_discover_wide_widget.dart';
import '/components/home/hero_section_trimester/hero_section_trimester_widget.dart';
import '/components/home/hero_section_trimester_wide/hero_section_trimester_wide_widget.dart';
import '/components/home/hero_section_week/hero_section_week_widget.dart';
import '/components/home/hero_top_widget/hero_top_widget_widget.dart';
import '/components/input_controls/buttons/floating_button_dialog/floating_button_dialog_widget.dart';
import '/components/learn_more_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

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
        backgroundColor: Colors.white,
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            onPressed: () async {
              await showDialog(
                barrierColor: const Color(0xFFF671AC),
                context: context,
                builder: (dialogContext) {
                  return Dialog(
                    elevation: 0,
                    insetPadding: EdgeInsets.zero,
                    backgroundColor: Colors.transparent,
                    alignment: const AlignmentDirectional(0.0, 0.0)
                        .resolve(Directionality.of(context)),
                    child: GestureDetector(
                      onTap: () {
                        FocusScope.of(dialogContext).unfocus();
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      child: const SizedBox(
                        height: double.infinity,
                        width: double.infinity,
                        child: FloatingButtonDialogWidget(),
                      ),
                    ),
                  );
                },
              );
            },
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            child: Container(
              width: 54.0,
              height: 54.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primary,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0x33000000),
                    offset: Offset(
                      0.0,
                      2.0,
                    ),
                  )
                ],
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Icon(
                Icons.add_rounded,
                color: FlutterFlowTheme.of(context).info,
                size: 32.0,
              ),
            ),
          ),
        ),
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
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 130.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '3rd trimester | week 40 • 0 days',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily: 'Quicksand',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Text(
                                          'due date in 4 days',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily: 'Quicksand',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            LinearPercentIndicator(
                                              percent: 1.0,
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.27,
                                              lineHeight: 12.0,
                                              animation: true,
                                              animateFromLastPercent: true,
                                              progressColor:
                                                  FlutterFlowTheme.of(context)
                                                      .lightPrimary,
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              barRadius: const Radius.circular(6.0),
                                              padding: EdgeInsets.zero,
                                            ),
                                            LinearPercentIndicator(
                                              percent: 0.7,
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.27,
                                              lineHeight: 12.0,
                                              animation: true,
                                              animateFromLastPercent: true,
                                              progressColor:
                                                  FlutterFlowTheme.of(context)
                                                      .lightPrimary,
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              barRadius: const Radius.circular(6.0),
                                              padding: EdgeInsets.zero,
                                            ),
                                            LinearPercentIndicator(
                                              percent: 0.0,
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.27,
                                              lineHeight: 12.0,
                                              animation: true,
                                              animateFromLastPercent: true,
                                              progressColor:
                                                  FlutterFlowTheme.of(context)
                                                      .lightPrimary,
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              barRadius: const Radius.circular(6.0),
                                              padding: EdgeInsets.zero,
                                            ),
                                          ].divide(const SizedBox(width: 10.0)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 25.0, 0.0, 0.0),
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Good evening,  ',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineLarge
                                          .override(
                                            fontFamily: 'Quicksand',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    TextSpan(
                                      text: 'Ana!',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineLarge
                                          .override(
                                            fontFamily: 'Quicksand',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Quicksand',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Container(
                                constraints: const BoxConstraints(
                                  maxHeight: 360.0,
                                ),
                                decoration: const BoxDecoration(),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: wrapWithModel(
                                          model: _model.heroTopWidgetModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: HeroTopWidgetWidget(
                                            image:
                                                'https://scontent.xx.fbcdn.net/v/t1.15752-9/474855233_1325472965568203_4305471425074596172_n.png?_nc_cat=108&ccb=1-7&_nc_sid=0024fc&_nc_ohc=dVk-K6PECOUQ7kNvgHt9Xzw&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gHOjYhnO1h-2ab5jDzzBz9AOCrqGXvjI0UYTqBZFiGh9A&oe=67BF7E6D',
                                            title: 'Stay healty.',
                                            description:
                                                'Let\'s do daily health checkup.',
                                            buttonColor:
                                                FlutterFlowTheme.of(context)
                                                    .peachDark,
                                            buttonText: 'Daily Log',
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: wrapWithModel(
                                          model: _model.heroTopWidgetModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: HeroTopWidgetWidget(
                                            image:
                                                'https://scontent.xx.fbcdn.net/v/t1.15752-9/474812187_601747862768066_4249954081409503191_n.png?_nc_cat=110&ccb=1-7&_nc_sid=0024fc&_nc_ohc=EIrE6-8YFHIQ7kNvgF8gMpI&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gHACLXrGDJTJinLK0ZOo3S1T7b1iEzLga0LYotVkFFgVQ&oe=67BF8F1B',
                                            title: 'Exercises are important',
                                            description:
                                                'Workout regularly to improve health.',
                                            buttonColor:
                                                FlutterFlowTheme.of(context)
                                                    .peachDark,
                                            buttonText: 'Workout plan',
                                          ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(width: 10.0)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Text(
                                'Third trimester',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Quicksand',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.heroSectionTrimesterModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: HeroSectionTrimesterWidget(
                                  image:
                                      'https://scontent.xx.fbcdn.net/v/t1.15752-9/474659323_613508808290945_6428632791256523170_n.png?_nc_cat=106&ccb=1-7&_nc_sid=0024fc&_nc_ohc=dkyMtAoMAfsQ7kNvgEXvUW8&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gF8-IMS8184JF54Qc7Ew4XEBQlw9k_GWrEiU43KvqmmpA&oe=67BF9020',
                                  title: 'Learn more about the third trimester',
                                  ontap: () async {
                                    context.pushNamed('BlogItem');
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.heroSectionTrimesterModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: HeroSectionTrimesterWidget(
                                  image:
                                      'https://scontent.xx.fbcdn.net/v/t1.15752-9/474659323_613508808290945_6428632791256523170_n.png?_nc_cat=106&ccb=1-7&_nc_sid=0024fc&_nc_ohc=dkyMtAoMAfsQ7kNvgEXvUW8&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gF8-IMS8184JF54Qc7Ew4XEBQlw9k_GWrEiU43KvqmmpA&oe=67BF9020',
                                  title: 'AfterPregnancy',
                                  description: 'Learn more about it',
                                  ontap: () async {
                                    context.pushNamed('BlogItem');
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.heroSectionTrimesterWideModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: HeroSectionTrimesterWideWidget(
                                  image:
                                      'https://scontent.xx.fbcdn.net/v/t1.15752-9/474827508_986343366719896_909951439796674415_n.png?_nc_cat=106&ccb=1-7&_nc_sid=0024fc&_nc_ohc=doFBUZF9MlYQ7kNvgE3jshy&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gF9Nd9WGhPQEOUo6JFG4V0YsJSjhOR1_XC18uvcXH4Feg&oe=67C0ABDB',
                                  title: 'Is the baby there?',
                                  buttonColor:
                                      FlutterFlowTheme.of(context).blueDark,
                                  buttonText: 'Add birth date',
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).blueLight,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.heroSectionTrimesterWideModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: HeroSectionTrimesterWideWidget(
                                  image:
                                      'https://scontent.xx.fbcdn.net/v/t1.15752-9/474812187_601747862768066_4249954081409503191_n.png?_nc_cat=110&ccb=1-7&_nc_sid=0024fc&_nc_ohc=EIrE6-8YFHIQ7kNvgF8gMpI&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gHACLXrGDJTJinLK0ZOo3S1T7b1iEzLga0LYotVkFFgVQ&oe=67BF8F1B',
                                  title: 'Exercises are important',
                                  description:
                                      'Do workouts regularly to improve health.',
                                  buttonColor:
                                      FlutterFlowTheme.of(context).peachDark,
                                  buttonText: 'Workout plan',
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).peachLight,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Text(
                                'Week 40 • 0 days',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Quicksand',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.heroSectionWeekModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: HeroSectionWeekWidget(
                                  title: 'Is the baby here?',
                                  description: 'Add baby\'s birth date.',
                                  buttonColor:
                                      FlutterFlowTheme.of(context).blueDark,
                                  buttonText: 'Add date',
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).blueLight,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.heroSectionWeekModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: HeroSectionWeekWidget(
                                  title: '1/23/2025',
                                  description: 'Baby\'s bue date.',
                                  buttonColor:
                                      FlutterFlowTheme.of(context).peachDark,
                                  buttonText: 'Change date',
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).peachLight,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Text(
                                'Stay healthy',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Quicksand',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.heroSectionWeekModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: HeroSectionWeekWidget(
                                  title: 'Explore checklists',
                                  description: '',
                                  buttonColor:
                                      FlutterFlowTheme.of(context).peachDark,
                                  buttonText: 'Start',
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).peachLight,
                                  image:
                                      'https://scontent.xx.fbcdn.net/v/t1.15752-9/474478781_999334955374876_5523026362871271046_n.png?stp=cp0_dst-png&_nc_cat=103&ccb=1-7&_nc_sid=0024fc&_nc_ohc=tdYvSyZ9u1EQ7kNvgG7-O-Q&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gHlaznv3h4EUrjteW8i-3jH4kq7NMKVIbw-Ly-zLwTSWw&oe=67C0C3EE',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Text(
                                'Your daily article',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Quicksand',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.heroSectionDailyArticleModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: HeroSectionDailyArticleWidget(
                                  image:
                                      'https://scontent.xx.fbcdn.net/v/t1.15752-9/474749256_1408052743912389_7560262154313303129_n.png?_nc_cat=102&ccb=1-7&_nc_sid=0024fc&_nc_ohc=KvGMAtuR-u4Q7kNvgETgu5w&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gEFHiuYPE0JQj-2kI9cQqlMU7cwJSmea-A5Hw9HuingiQ&oe=67C0C4DC',
                                  title: 'Exercises are important',
                                  description:
                                      'Do workouts regularly to improve health.',
                                  buttonColor:
                                      FlutterFlowTheme.of(context).peachDark,
                                  buttomText: 'Read',
                                  ontap: () async {
                                    context.pushNamed('BlogItem');
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.heroSectionDailyArticleModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: HeroSectionDailyArticleWidget(
                                  image:
                                      'https://scontent.xx.fbcdn.net/v/t1.15752-9/474749256_1408052743912389_7560262154313303129_n.png?_nc_cat=102&ccb=1-7&_nc_sid=0024fc&_nc_ohc=KvGMAtuR-u4Q7kNvgETgu5w&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gEFHiuYPE0JQj-2kI9cQqlMU7cwJSmea-A5Hw9HuingiQ&oe=67C0C4DC',
                                  title: 'Exercises are important',
                                  description:
                                      'Do workouts regularly to improve health.',
                                  buttonColor:
                                      FlutterFlowTheme.of(context).peachDark,
                                  buttomText: 'Read',
                                  ontap: () async {
                                    context.pushNamed('BlogItem');
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.heroSectionDiscoverWideModel,
                                updateCallback: () => safeSetState(() {}),
                                child: HeroSectionDiscoverWideWidget(
                                  title: 'Discover more articles',
                                  ontap: () async {
                                    context.pushNamed('Blog');
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Text(
                                'Learn more',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Quicksand',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: wrapWithModel(
                                      model: _model.learnMoreCardModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: LearnMoreCardWidget(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .peachDark,
                                        text: 'Pregnancy',
                                        textColor: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: wrapWithModel(
                                      model: _model.learnMoreCardModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: LearnMoreCardWidget(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .blueDark,
                                        text: 'Mind',
                                        textColor: Colors.white,
                                      ),
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 16.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.appBarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: AppBarWidget(
                      leadingIcon: const Icon(
                        Icons.menu_rounded,
                        size: 30.0,
                      ),
                      title: 'Home',
                      action: () async {},
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
