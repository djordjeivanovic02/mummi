import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'main_input_field_model.dart';
export 'main_input_field_model.dart';

class MainInputFieldWidget extends StatefulWidget {
  const MainInputFieldWidget({
    super.key,
    required this.text,
    required this.placeholder,
    int? type,
    required this.icon,
  }) : type = type ?? 0;

  final String? text;
  final String? placeholder;
  final int type;
  final Widget? icon;

  @override
  State<MainInputFieldWidget> createState() => _MainInputFieldWidgetState();
}

class _MainInputFieldWidgetState extends State<MainInputFieldWidget> {
  late MainInputFieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainInputFieldModel());

    _model.iconAndTextTextController ??=
        TextEditingController(text: widget.text);
    _model.iconAndTextFocusNode ??= FocusNode();

    _model.iconAndPasswordTextController ??=
        TextEditingController(text: widget.text);
    _model.iconAndPasswordFocusNode ??= FocusNode();

    _model.noIconAndTextTextController ??=
        TextEditingController(text: widget.text);
    _model.noIconAndTextFocusNode ??= FocusNode();

    _model.noIconAndPasswordTextController ??=
        TextEditingController(text: widget.text);
    _model.noIconAndPasswordFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (widget.icon != null) {
          return Builder(
            builder: (context) {
              if (widget.type == 0) {
                return TextFormField(
                  controller: _model.iconAndTextTextController,
                  focusNode: _model.iconAndTextFocusNode,
                  autofocus: false,
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: false,
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Quicksand',
                              letterSpacing: 0.0,
                            ),
                    hintText: widget.placeholder,
                    hintStyle:
                        FlutterFlowTheme.of(context).titleMedium.override(
                              fontFamily: 'Quicksand',
                              color: FlutterFlowTheme.of(context).info,
                              letterSpacing: 0.0,
                            ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    filled: true,
                    fillColor: const Color(0x28000000),
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                    prefixIcon: widget.icon,
                  ),
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Quicksand',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                  validator: _model.iconAndTextTextControllerValidator
                      .asValidator(context),
                );
              } else {
                return TextFormField(
                  controller: _model.iconAndPasswordTextController,
                  focusNode: _model.iconAndPasswordFocusNode,
                  autofocus: false,
                  obscureText: !_model.iconAndPasswordVisibility,
                  decoration: InputDecoration(
                    isDense: false,
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Quicksand',
                              letterSpacing: 0.0,
                            ),
                    hintText: widget.placeholder,
                    hintStyle:
                        FlutterFlowTheme.of(context).titleMedium.override(
                              fontFamily: 'Quicksand',
                              color: FlutterFlowTheme.of(context).info,
                              letterSpacing: 0.0,
                            ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    filled: true,
                    fillColor: const Color(0x28000000),
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                    prefixIcon: widget.icon,
                    suffixIcon: InkWell(
                      onTap: () => safeSetState(
                        () => _model.iconAndPasswordVisibility =
                            !_model.iconAndPasswordVisibility,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        _model.iconAndPasswordVisibility
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: FlutterFlowTheme.of(context).info,
                        size: 24.0,
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Quicksand',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                  validator: _model.iconAndPasswordTextControllerValidator
                      .asValidator(context),
                );
              }
            },
          );
        } else {
          return Builder(
            builder: (context) {
              if (widget.type == 0) {
                return TextFormField(
                  controller: _model.noIconAndTextTextController,
                  focusNode: _model.noIconAndTextFocusNode,
                  autofocus: false,
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: false,
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Quicksand',
                              letterSpacing: 0.0,
                            ),
                    hintText: widget.placeholder,
                    hintStyle:
                        FlutterFlowTheme.of(context).titleMedium.override(
                              fontFamily: 'Quicksand',
                              color: FlutterFlowTheme.of(context).info,
                              letterSpacing: 0.0,
                            ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    filled: true,
                    fillColor: const Color(0x28000000),
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                  ),
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Quicksand',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                  validator: _model.noIconAndTextTextControllerValidator
                      .asValidator(context),
                );
              } else {
                return TextFormField(
                  controller: _model.noIconAndPasswordTextController,
                  focusNode: _model.noIconAndPasswordFocusNode,
                  autofocus: false,
                  obscureText: !_model.noIconAndPasswordVisibility,
                  decoration: InputDecoration(
                    isDense: false,
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Quicksand',
                              letterSpacing: 0.0,
                            ),
                    hintText: widget.placeholder,
                    hintStyle:
                        FlutterFlowTheme.of(context).titleMedium.override(
                              fontFamily: 'Quicksand',
                              color: FlutterFlowTheme.of(context).info,
                              letterSpacing: 0.0,
                            ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    filled: true,
                    fillColor: const Color(0x28000000),
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                    suffixIcon: InkWell(
                      onTap: () => safeSetState(
                        () => _model.noIconAndPasswordVisibility =
                            !_model.noIconAndPasswordVisibility,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        _model.noIconAndPasswordVisibility
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: FlutterFlowTheme.of(context).info,
                        size: 24.0,
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Quicksand',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                  validator: _model.noIconAndPasswordTextControllerValidator
                      .asValidator(context),
                );
              }
            },
          );
        }
      },
    );
  }
}
