import '/components/app_bar_widget.dart';
import '/components/containers/settings_item_container/settings_item_container_widget.dart';
import '/components/containers/white_container_oneitem/white_container_oneitem_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_settings_widget.dart' show EditSettingsWidget;
import 'package:flutter/material.dart';

class EditSettingsModel extends FlutterFlowModel<EditSettingsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SettingsItemContainer component.
  late SettingsItemContainerModel settingsItemContainerModel1;
  // Model for SettingsItemContainer component.
  late SettingsItemContainerModel settingsItemContainerModel2;
  // Model for SettingsItemContainer component.
  late SettingsItemContainerModel settingsItemContainerModel3;
  // Model for SettingsItemContainer component.
  late SettingsItemContainerModel settingsItemContainerModel4;
  // Model for SettingsItemContainer component.
  late SettingsItemContainerModel settingsItemContainerModel5;
  // Model for WhiteContainerOneitem component.
  late WhiteContainerOneitemModel whiteContainerOneitemModel1;
  // Model for WhiteContainerOneitem component.
  late WhiteContainerOneitemModel whiteContainerOneitemModel2;
  // Model for AppBar component.
  late AppBarModel appBarModel;

  @override
  void initState(BuildContext context) {
    settingsItemContainerModel1 =
        createModel(context, () => SettingsItemContainerModel());
    settingsItemContainerModel2 =
        createModel(context, () => SettingsItemContainerModel());
    settingsItemContainerModel3 =
        createModel(context, () => SettingsItemContainerModel());
    settingsItemContainerModel4 =
        createModel(context, () => SettingsItemContainerModel());
    settingsItemContainerModel5 =
        createModel(context, () => SettingsItemContainerModel());
    whiteContainerOneitemModel1 =
        createModel(context, () => WhiteContainerOneitemModel());
    whiteContainerOneitemModel2 =
        createModel(context, () => WhiteContainerOneitemModel());
    appBarModel = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    settingsItemContainerModel1.dispose();
    settingsItemContainerModel2.dispose();
    settingsItemContainerModel3.dispose();
    settingsItemContainerModel4.dispose();
    settingsItemContainerModel5.dispose();
    whiteContainerOneitemModel1.dispose();
    whiteContainerOneitemModel2.dispose();
    appBarModel.dispose();
  }
}
