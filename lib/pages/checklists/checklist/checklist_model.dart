import '/components/app_bar_widget.dart';
import '/components/checklist_section_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'checklist_widget.dart' show ChecklistWidget;
import 'package:flutter/material.dart';

class ChecklistModel extends FlutterFlowModel<ChecklistWidget> {
  ///  Local state fields for this page.

  List<String> myChecklists = [
    'Pregnancy Tasks',
    'Pregnancy Tasks 2',
    'Pregnancy Tasks 3',
    'Pregnancy Tasks 4',
    'Pregnancy Tasks 5'
  ];
  void addToMyChecklists(String item) => myChecklists.add(item);
  void removeFromMyChecklists(String item) => myChecklists.remove(item);
  void removeAtIndexFromMyChecklists(int index) => myChecklists.removeAt(index);
  void insertAtIndexInMyChecklists(int index, String item) =>
      myChecklists.insert(index, item);
  void updateMyChecklistsAtIndex(int index, Function(String) updateFn) =>
      myChecklists[index] = updateFn(myChecklists[index]);

  ///  State fields for stateful widgets in this page.

  // Model for AppBar component.
  late AppBarModel appBarModel;
  // Model for ChecklistSection component.
  late ChecklistSectionModel checklistSectionModel1;
  // Model for ChecklistSection component.
  late ChecklistSectionModel checklistSectionModel2;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    checklistSectionModel1 =
        createModel(context, () => ChecklistSectionModel());
    checklistSectionModel2 =
        createModel(context, () => ChecklistSectionModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
    checklistSectionModel1.dispose();
    checklistSectionModel2.dispose();
  }
}
