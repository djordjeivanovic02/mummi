import '/components/app_bar_widget.dart';
import '/components/home/hero_section_daily_article/hero_section_daily_article_widget.dart';
import '/components/home/hero_section_discover_wide/hero_section_discover_wide_widget.dart';
import '/components/home/hero_section_trimester/hero_section_trimester_widget.dart';
import '/components/learn_more_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'blog_model.dart';
export 'blog_model.dart';

class BlogWidget extends StatefulWidget {
  const BlogWidget({super.key});

  @override
  State<BlogWidget> createState() => _BlogWidgetState();
}

class _BlogWidgetState extends State<BlogWidget> {
  late BlogModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlogModel());

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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('FloatingActionButton pressed ...');
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
                                  title: 'Better connection',
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
                                model: _model.heroSectionTrimesterModel,
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
                                  0.0, 12.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.heroSectionDiscoverWideModel,
                                updateCallback: () => safeSetState(() {}),
                                child: HeroSectionDiscoverWideWidget(
                                  title: 'Saved Articles',
                                  ontap: () async {},
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Text(
                                'Discover more',
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
                                                .peachLight,
                                        text: 'Pregnancy',
                                        textColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: wrapWithModel(
                                      model: _model.learnMoreCardModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: LearnMoreCardWidget(
                                        backgroundColor: const Color(0xFF9DEEE7),
                                        text: 'Postpartum',
                                        textColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 16.0)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: wrapWithModel(
                                      model: _model.learnMoreCardModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: LearnMoreCardWidget(
                                        backgroundColor: const Color(0xFFFBDCEA),
                                        text: 'Pevlic Health',
                                        textColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: wrapWithModel(
                                      model: _model.learnMoreCardModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: LearnMoreCardWidget(
                                        backgroundColor: const Color(0xFFEAC2A9),
                                        text: 'Feeding',
                                        textColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 16.0)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: wrapWithModel(
                                      model: _model.learnMoreCardModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      child: LearnMoreCardWidget(
                                        backgroundColor: const Color(0xFFFFD0D1),
                                        text: 'Body',
                                        textColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: wrapWithModel(
                                      model: _model.learnMoreCardModel6,
                                      updateCallback: () => safeSetState(() {}),
                                      child: LearnMoreCardWidget(
                                        backgroundColor: const Color(0xFFDFEDFF),
                                        text: 'Mind',
                                        textColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 16.0)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 30.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: wrapWithModel(
                                      model: _model.learnMoreCardModel7,
                                      updateCallback: () => safeSetState(() {}),
                                      child: LearnMoreCardWidget(
                                        backgroundColor: const Color(0xFFB9F7B5),
                                        text: 'Partner',
                                        textColor: FlutterFlowTheme.of(context)
                                            .primaryText,
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
                        Icons.keyboard_backspace,
                        size: 30.0,
                      ),
                      title: 'Read',
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
