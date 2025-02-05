import '/components/app_bar_widget.dart';
import '/components/checklist_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tasks_widget.dart' show TasksWidget;
import 'package:flutter/material.dart';

class TasksModel extends FlutterFlowModel<TasksWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar component.
  late AppBarModel appBarModel;
  // Model for ChecklistButton component.
  late ChecklistButtonModel checklistButtonModel;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    checklistButtonModel = createModel(context, () => ChecklistButtonModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
    checklistButtonModel.dispose();
  }
}
