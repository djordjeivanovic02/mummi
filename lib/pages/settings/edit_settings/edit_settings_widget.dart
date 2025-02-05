import '/components/app_bar_widget.dart';
import '/components/containers/settings_item_container/settings_item_container_widget.dart';
import '/components/containers/white_container_oneitem/white_container_oneitem_widget.dart';
import '/components/input_controls/buttons/primary_button/primary_button_widget.dart';
import '/components/input_controls/my_switch/my_switch_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'edit_settings_model.dart';
export 'edit_settings_model.dart';

class EditSettingsWidget extends StatefulWidget {
  const EditSettingsWidget({super.key});

  @override
  State<EditSettingsWidget> createState() => _EditSettingsWidgetState();
}

class _EditSettingsWidgetState extends State<EditSettingsWidget> {
  late EditSettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditSettingsModel());

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 140.0, 30.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        wrapWithModel(
                          model: _model.settingsItemContainerModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: SettingsItemContainerWidget(
                            title: 'Pregnant',
                            subtitle: 'App mode',
                            onTap: () async {},
                            child: () => PrimaryButtonWidget(
                              textValue: 'Change',
                              onTap: () async {},
                            ),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.settingsItemContainerModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: SettingsItemContainerWidget(
                            title: 'Oz',
                            subtitle: 'Units',
                            onTap: () async {},
                            child: () => PrimaryButtonWidget(
                              textValue: 'Change',
                              onTap: () async {},
                            ),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.settingsItemContainerModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: SettingsItemContainerWidget(
                            title: 'Daily Log',
                            subtitle: 'Reminder',
                            onTap: () async {},
                            child: () => const MySwitchWidget(),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.settingsItemContainerModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: SettingsItemContainerWidget(
                            title: 'Pelvic Floor',
                            subtitle: 'Reminder',
                            onTap: () async {},
                            child: () => PrimaryButtonWidget(
                              textValue: 'Change',
                              onTap: () async {},
                            ),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.settingsItemContainerModel5,
                          updateCallback: () => safeSetState(() {}),
                          child: SettingsItemContainerWidget(
                            title: 'Due Date',
                            subtitle: 'Reminder',
                            onTap: () async {},
                            child: () => PrimaryButtonWidget(
                              textValue: 'Change',
                              onTap: () async {},
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.whiteContainerOneitemModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: WhiteContainerOneitemWidget(
                                text: 'Delete Account',
                                icon: Icon(
                                  Icons.delete_outline_outlined,
                                  color: FlutterFlowTheme.of(context).darkRed,
                                ),
                                gap: 16,
                                color: FlutterFlowTheme.of(context).darkRed,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.whiteContainerOneitemModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: WhiteContainerOneitemWidget(
                                text: 'Log Out',
                                icon: Icon(
                                  Icons.logout_outlined,
                                  color: FlutterFlowTheme.of(context).darkRed,
                                ),
                                gap: 16,
                                color: FlutterFlowTheme.of(context).darkRed,
                              ),
                            ),
                          ].divide(const SizedBox(height: 12.0)),
                        ),
                      ].divide(const SizedBox(height: 16.0)),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.appBarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: AppBarWidget(
                      leadingIcon: const Icon(
                        Icons.keyboard_backspace_rounded,
                        size: 24.0,
                      ),
                      title: 'Settings',
                      action: () async {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
