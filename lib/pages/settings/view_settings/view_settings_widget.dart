import '/components/app_bar_widget.dart';
import '/components/containers/settings_item_container/settings_item_container_widget.dart';
import '/components/containers/white_container_oneitem/white_container_oneitem_widget.dart';
import '/components/input_controls/buttons/primary_button/primary_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'view_settings_model.dart';
export 'view_settings_model.dart';

class ViewSettingsWidget extends StatefulWidget {
  const ViewSettingsWidget({super.key});

  @override
  State<ViewSettingsWidget> createState() => _ViewSettingsWidgetState();
}

class _ViewSettingsWidgetState extends State<ViewSettingsWidget> {
  late ViewSettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewSettingsModel());

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
        body: Column(
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
                          title: 'Basic',
                          subtitle: 'Active Plan',
                          onTap: () async {},
                          child: () => PrimaryButtonWidget(
                            textValue: 'UPGRADE',
                            onTap: () async {},
                          ),
                        ),
                      ),
                      wrapWithModel(
                        model: _model.settingsItemContainerModel2,
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
                        model: _model.whiteContainerOneitemModel,
                        updateCallback: () => safeSetState(() {}),
                        child: WhiteContainerOneitemWidget(
                          text: 'Log Out',
                          icon: Icon(
                            Icons.logout_rounded,
                            color: FlutterFlowTheme.of(context).darkRed,
                          ),
                          gap: 16,
                        ),
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
                    ),
                    title: 'Settings',
                    showProfile: false,
                    action: () async {},
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
