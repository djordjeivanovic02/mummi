import '/components/app_bar_widget.dart';
import '/components/containers/settings_item_container/settings_item_container_widget.dart';
import '/components/containers/white_container_oneitem/white_container_oneitem_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_settings_widget.dart' show ViewSettingsWidget;
import 'package:flutter/material.dart';

class ViewSettingsModel extends FlutterFlowModel<ViewSettingsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SettingsItemContainer component.
  late SettingsItemContainerModel settingsItemContainerModel1;
  // Model for SettingsItemContainer component.
  late SettingsItemContainerModel settingsItemContainerModel2;
  // Model for WhiteContainerOneitem component.
  late WhiteContainerOneitemModel whiteContainerOneitemModel;
  // Model for AppBar component.
  late AppBarModel appBarModel;

  @override
  void initState(BuildContext context) {
    settingsItemContainerModel1 =
        createModel(context, () => SettingsItemContainerModel());
    settingsItemContainerModel2 =
        createModel(context, () => SettingsItemContainerModel());
    whiteContainerOneitemModel =
        createModel(context, () => WhiteContainerOneitemModel());
    appBarModel = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    settingsItemContainerModel1.dispose();
    settingsItemContainerModel2.dispose();
    whiteContainerOneitemModel.dispose();
    appBarModel.dispose();
  }
}
