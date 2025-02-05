import '/components/checklist_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'checklist_section_widget.dart' show ChecklistSectionWidget;
import 'package:flutter/material.dart';

class ChecklistSectionModel extends FlutterFlowModel<ChecklistSectionWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ChecklistButton component.
  late ChecklistButtonModel checklistButtonModel;

  @override
  void initState(BuildContext context) {
    checklistButtonModel = createModel(context, () => ChecklistButtonModel());
  }

  @override
  void dispose() {
    checklistButtonModel.dispose();
  }
}
