import '/components/app_bar_widget.dart';
import '/components/blog/blog_category_row/blog_category_row_widget.dart';
import '/components/blog/blog_discover_more/blog_discover_more_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'blog_category_model.dart';
export 'blog_category_model.dart';

class BlogCategoryWidget extends StatefulWidget {
  const BlogCategoryWidget({super.key});

  @override
  State<BlogCategoryWidget> createState() => _BlogCategoryWidgetState();
}

class _BlogCategoryWidgetState extends State<BlogCategoryWidget> {
  late BlogCategoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlogCategoryModel());

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
                                20.0, 0.0, 20.0, 0.0),
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
                                    model: _model.blogCategoryRowModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const BlogCategoryRowWidget(
                                      checked: true,
                                      last: false,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 1.0, 0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.blogCategoryRowModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const BlogCategoryRowWidget(
                                      checked: false,
                                      last: false,
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.blogCategoryRowModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: const BlogCategoryRowWidget(
                                    checked: false,
                                    last: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                    model: _model.blogCategoryRowModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const BlogCategoryRowWidget(
                                      checked: true,
                                      last: false,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 1.0, 0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.blogCategoryRowModel5,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const BlogCategoryRowWidget(
                                      checked: true,
                                      last: false,
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.blogCategoryRowModel6,
                                  updateCallback: () => safeSetState(() {}),
                                  child: const BlogCategoryRowWidget(
                                    checked: false,
                                    last: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 24.0, 20.0, 0.0),
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
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model.blogDiscoverMoreModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BlogDiscoverMoreWidget(),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(),
                                    child: wrapWithModel(
                                      model: _model.blogDiscoverMoreModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const BlogDiscoverMoreWidget(
                                        title: 'Postpartum',
                                        color: Color(0xFF9DEEE7),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(),
                                    child: wrapWithModel(
                                      model: _model.blogDiscoverMoreModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const BlogDiscoverMoreWidget(
                                        title: 'Pevlic Health',
                                        color: Color(0xFFFBDCEA),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(),
                                    child: wrapWithModel(
                                      model: _model.blogDiscoverMoreModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const BlogDiscoverMoreWidget(
                                        title: 'Feeding',
                                        color: Color(0xFFEAC2A9),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(),
                                    child: wrapWithModel(
                                      model: _model.blogDiscoverMoreModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const BlogDiscoverMoreWidget(
                                        title: 'Body',
                                        color: Color(0xFFFFD0D1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(),
                                    child: wrapWithModel(
                                      model: _model.blogDiscoverMoreModel6,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const BlogDiscoverMoreWidget(
                                        title: 'Mind',
                                        color: Color(0xFFDFEDFF),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 20.0, 0.0),
                                    child: Container(
                                      decoration: const BoxDecoration(),
                                      child: wrapWithModel(
                                        model: _model.blogDiscoverMoreModel7,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const BlogDiscoverMoreWidget(
                                          title: 'Mind',
                                          color: Color(0xFFB9F7B5),
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 16.0)),
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
                      title: 'Pregnancy',
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
