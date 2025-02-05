import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'my_switch_model.dart';
export 'my_switch_model.dart';

class MySwitchWidget extends StatefulWidget {
  const MySwitchWidget({super.key});

  @override
  State<MySwitchWidget> createState() => _MySwitchWidgetState();
}

class _MySwitchWidgetState extends State<MySwitchWidget> {
  late MySwitchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MySwitchModel());

    _model.switchValue = false;
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Switch.adaptive(
        value: _model.switchValue!,
        onChanged: (newValue) async {
          safeSetState(() => _model.switchValue = newValue);
        },
        activeColor: FlutterFlowTheme.of(context).primaryBackground,
        activeTrackColor: FlutterFlowTheme.of(context).primary,
        inactiveTrackColor: const Color(0xFFC6C6C6),
        inactiveThumbColor: FlutterFlowTheme.of(context).primaryBackground,
      ),
    );
  }
}
