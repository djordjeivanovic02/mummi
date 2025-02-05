import '/components/blog/blog_read_next/blog_read_next_widget.dart';
import '/components/blog/blog_read_time/blog_read_time_widget.dart';
import '/components/blog/blog_writer_indicator/blog_writer_indicator_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'blog_item_model.dart';
export 'blog_item_model.dart';

class BlogItemWidget extends StatefulWidget {
  const BlogItemWidget({super.key});

  @override
  State<BlogItemWidget> createState() => _BlogItemWidgetState();
}

class _BlogItemWidgetState extends State<BlogItemWidget> {
  late BlogItemModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlogItemModel());

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
        body: ListView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Stack(
              alignment: const AlignmentDirectional(0.0, -1.0),
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.network(
                      'https://scontent.xx.fbcdn.net/v/t1.15752-9/474185820_625887133258375_8131549781875534622_n.png?_nc_cat=103&ccb=1-7&_nc_sid=0024fc&_nc_ohc=jkL1-AI7lC4Q7kNvgGdXGKM&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gEvwzHLQ_zJVB5aDHxsltS3fZ71qFDV2jNkZdCG1KQl4Q&oe=67C16C72',
                      height: 320.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 240.0, 0.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(64.0),
                        topRight: Radius.circular(64.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 30.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.blogWriterIndicatorModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: const BlogWriterIndicatorWidget(
                                    image:
                                        'https://scontent.xx.fbcdn.net/v/t1.15752-9/474642735_521942611009274_7729252504102341958_n.png?_nc_cat=103&ccb=1-7&_nc_sid=0024fc&_nc_ohc=y1Lxa_vEYykQ7kNvgG2FcVZ&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gF5Vk_CDxwYosLWg2vMa8jb2khInd7t3oT6ALHnYh4ZYA&oe=67C1639A',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.blogReadTimeModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: const BlogReadTimeWidget(
                                    mins: '3 min',
                                  ),
                                ),
                              ].divide(const SizedBox(width: 12.0)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 24.0, 20.0, 0.0),
                            child: Text(
                              'Third trimester',
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
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
                                20.0, 12.0, 20.0, 0.0),
                            child: Text(
                              ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id sapien arcu. Vivamus neque orci, malesuada quis condimentum in, porta quis  neque. Donec pulvinar, risus ut finibus ultrices, mi turpis ornare  metus, ut faucibus lacus justo id urna. Duis semper sapien auctor erat  rhoncus euismod. Nam dui neque, pretium quis lacus a, varius egestas  felis.\n\nQuisque maximus tincidunt nunc ac maximus. Curabitur pharetra  quis dui non iaculis. Donec dignissim leo orci. Proin interdum, ex sit  amet faucibus interdum, elit massa aliquet sapien, quis scelerisque nibh odio sed urna. Donec sed aliquet quam.\n\nNam lacinia lobortis eros, ut  suscipit nunc tincidunt et. Fusce fringilla euismod orci vitae iaculis.  Morbi id tortor lorem. Ut ac pretium nunc, a ultrices metus. Cras quis  nisl semper felis fringilla scelerisque efficitur commodo tortor.  Quisque ullamcorper sapien nibh.\n\nVivamus rutrum, purus at dapibus accumsan, diam eros ornare enim, non  tincidunt enim enim id libero. Etiam tempor dui massa, et accumsan neque finibus a.\nInteger pellentesque neque at arcu ornare, sit amet interdum metus consequat. Sed viverra molestie urna, ac congue turpis  scelerisque eu. Donec felis odio, tempor quis laoreet non, euismod et  lectus. Phasellus dapibus diam et erat venenatis laoreet. Quisque at  risus non odio viverra eleifend.',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Quicksand',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 64.0, 0.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: const BoxDecoration(),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(1000.0),
                                      child: Image.network(
                                        'https://scontent.xx.fbcdn.net/v/t1.15752-9/474642735_521942611009274_7729252504102341958_n.png?_nc_cat=103&ccb=1-7&_nc_sid=0024fc&_nc_ohc=y1Lxa_vEYykQ7kNvgG2FcVZ&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gF5Vk_CDxwYosLWg2vMa8jb2khInd7t3oT6ALHnYh4ZYA&oe=67C1639A',
                                        width: 100.0,
                                        height: 100.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Text(
                                        'Jana Dacovic',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Quicksand',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: Text(
                                        'Child birth expert',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Quicksand',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 24.0, 20.0, 0.0),
                            child: Text(
                              'Next Read',
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
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.blogReadNextModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const BlogReadNextWidget(
                                        image:
                                            'https://scontent.xx.fbcdn.net/v/t1.15752-9/474185820_625887133258375_8131549781875534622_n.png?_nc_cat=103&ccb=1-7&_nc_sid=0024fc&_nc_ohc=jkL1-AI7lC4Q7kNvgGdXGKM&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gEvwzHLQ_zJVB5aDHxsltS3fZ71qFDV2jNkZdCG1KQl4Q&oe=67C16C72',
                                        title: 'Better connection',
                                        description:
                                            'Do workouts regularly to improve health.',
                                        time: '3 min',
                                      ),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.blogReadNextModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const BlogReadNextWidget(
                                      image:
                                          'https://scontent.xx.fbcdn.net/v/t1.15752-9/474185820_625887133258375_8131549781875534622_n.png?_nc_cat=103&ccb=1-7&_nc_sid=0024fc&_nc_ohc=jkL1-AI7lC4Q7kNvgGdXGKM&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gEvwzHLQ_zJVB5aDHxsltS3fZ71qFDV2jNkZdCG1KQl4Q&oe=67C16C72',
                                      title: 'Better connection',
                                      description:
                                          'Do workouts regularly to improve health.',
                                      time: '3 min',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.blogReadNextModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const BlogReadNextWidget(
                                      image:
                                          'https://scontent.xx.fbcdn.net/v/t1.15752-9/474185820_625887133258375_8131549781875534622_n.png?_nc_cat=103&ccb=1-7&_nc_sid=0024fc&_nc_ohc=jkL1-AI7lC4Q7kNvgGdXGKM&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gEvwzHLQ_zJVB5aDHxsltS3fZ71qFDV2jNkZdCG1KQl4Q&oe=67C16C72',
                                      title: 'Better connection',
                                      description:
                                          'Do workouts regularly to improve health.',
                                      time: '3 min',
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 20.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.blogReadNextModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const BlogReadNextWidget(
                                        image:
                                            'https://scontent.xx.fbcdn.net/v/t1.15752-9/474185820_625887133258375_8131549781875534622_n.png?_nc_cat=103&ccb=1-7&_nc_sid=0024fc&_nc_ohc=jkL1-AI7lC4Q7kNvgGdXGKM&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gEvwzHLQ_zJVB5aDHxsltS3fZ71qFDV2jNkZdCG1KQl4Q&oe=67C16C72',
                                        title: 'Better connection',
                                        description:
                                            'Do workouts regularly to improve health.',
                                        time: '3 min',
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
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              width: 52.0,
                              height: 52.0,
                              decoration: BoxDecoration(
                                color: const Color(0x2A000000),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Icon(
                                Icons.keyboard_backspace_rounded,
                                color: FlutterFlowTheme.of(context).info,
                                size: 30.0,
                              ),
                            ),
                          ),
                          Container(
                            height: 52.0,
                            decoration: BoxDecoration(
                              color: const Color(0x52000000),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.bookmark_border_outlined,
                                    color: FlutterFlowTheme.of(context).info,
                                    size: 30.0,
                                  ),
                                  Text(
                                    'Save',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Quicksand',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ].divide(const SizedBox(width: 4.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
