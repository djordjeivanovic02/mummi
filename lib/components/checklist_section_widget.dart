import '/components/checklist_button_widget.dart';
import '/components/checklists/new_checklist/new_checklist_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'checklist_section_model.dart';
export 'checklist_section_model.dart';

class ChecklistSectionWidget extends StatefulWidget {
  const ChecklistSectionWidget({
    super.key,
    String? title,
    this.checklists,
  }) : title = title ?? 'My Checklists';

  final String title;
  final List<String>? checklists;

  @override
  State<ChecklistSectionWidget> createState() => _ChecklistSectionWidgetState();
}

class _ChecklistSectionWidgetState extends State<ChecklistSectionWidget> {
  late ChecklistSectionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChecklistSectionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(-1.0, 0.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
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
                spreadRadius: FFAppConstants.spread.toDouble(),
              )
            ],
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Quicksand',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Builder(
                  builder: (context) {
                    final checklist = widget.checklists?.toList() ?? [];

                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children:
                          List.generate(checklist.length, (checklistIndex) {
                        final checklistItem = checklist[checklistIndex];
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      widget.checklists
                                          ?.elementAtOrNull(checklistIndex),
                                      'Pregnancy Tasks',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Quicksand',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Icon(
                                    Icons.more_vert,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ],
                        );
                      }),
                    );
                  },
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Builder(
                    builder: (context) => Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: wrapWithModel(
                        model: _model.checklistButtonModel,
                        updateCallback: () => safeSetState(() {}),
                        child: ChecklistButtonWidget(
                          ontap: () async {
                            await showDialog(
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: const AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: const SizedBox(
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: NewChecklistWidget(),
                                  ),
                                );
                              },
                            );
                          },
                        ),
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
