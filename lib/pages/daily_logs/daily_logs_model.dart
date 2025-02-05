import '/components/app_bar_widget.dart';
import '/components/daily_log_widget_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'daily_logs_widget.dart' show DailyLogsWidget;
import 'package:flutter/material.dart';

class DailyLogsModel extends FlutterFlowModel<DailyLogsWidget> {
  ///  Local state fields for this page.

  List<String> hightlights = ['Sleep', 'Partner', 'Family', 'Food'];
  void addToHightlights(String item) => hightlights.add(item);
  void removeFromHightlights(String item) => hightlights.remove(item);
  void removeAtIndexFromHightlights(int index) => hightlights.removeAt(index);
  void insertAtIndexInHightlights(int index, String item) =>
      hightlights.insert(index, item);
  void updateHightlightsAtIndex(int index, Function(String) updateFn) =>
      hightlights[index] = updateFn(hightlights[index]);

  List<String> simptoms = [];
  void addToSimptoms(String item) => simptoms.add(item);
  void removeFromSimptoms(String item) => simptoms.remove(item);
  void removeAtIndexFromSimptoms(int index) => simptoms.removeAt(index);
  void insertAtIndexInSimptoms(int index, String item) =>
      simptoms.insert(index, item);
  void updateSimptomsAtIndex(int index, Function(String) updateFn) =>
      simptoms[index] = updateFn(simptoms[index]);

  ///  State fields for stateful widgets in this page.

  // Model for DailyLogWidget component.
  late DailyLogWidgetModel dailyLogWidgetModel1;
  // Model for DailyLogWidget component.
  late DailyLogWidgetModel dailyLogWidgetModel2;
  // Model for DailyLogWidget component.
  late DailyLogWidgetModel dailyLogWidgetModel3;
  // Model for AppBar component.
  late AppBarModel appBarModel;

  @override
  void initState(BuildContext context) {
    dailyLogWidgetModel1 = createModel(context, () => DailyLogWidgetModel());
    dailyLogWidgetModel2 = createModel(context, () => DailyLogWidgetModel());
    dailyLogWidgetModel3 = createModel(context, () => DailyLogWidgetModel());
    appBarModel = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    dailyLogWidgetModel1.dispose();
    dailyLogWidgetModel2.dispose();
    dailyLogWidgetModel3.dispose();
    appBarModel.dispose();
  }
}
