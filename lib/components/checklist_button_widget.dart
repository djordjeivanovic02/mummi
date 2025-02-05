import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'checklist_button_model.dart';
export 'checklist_button_model.dart';

class ChecklistButtonWidget extends StatefulWidget {
  const ChecklistButtonWidget({
    super.key,
    this.ontap,
  });

  final Future Function()? ontap;

  @override
  State<ChecklistButtonWidget> createState() => _ChecklistButtonWidgetState();
}

class _ChecklistButtonWidgetState extends State<ChecklistButtonWidget> {
  late ChecklistButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChecklistButtonModel());

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
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          await widget.ontap?.call();
        },
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primary,
            borderRadius: BorderRadius.circular(1000.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.add,
                  color: FlutterFlowTheme.of(context).info,
                  size: 24.0,
                ),
                Text(
                  'New Checklist',
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Quicksand',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ].divide(const SizedBox(width: 10.0)),
            ),
          ),
        ),
      ),
    );
  }
}
