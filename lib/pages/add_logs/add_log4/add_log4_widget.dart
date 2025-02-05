import '/components/input_controls/buttons/primary_button/primary_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_log4_model.dart';
export 'add_log4_model.dart';

class AddLog4Widget extends StatefulWidget {
  const AddLog4Widget({
    super.key,
    String? feelingImage,
  }) : feelingImage = feelingImage ??
            'CAES/BpDaEpEYjI1MFlXbHVaWEpmYVhBMU1UTnBhSGtTdVJNS0RGSnZkMTk1ZEdocE9HZzBhUkxpRHdvT1NXMWhaMlZmTldodWRYbDViR1lZQnlMSUR6S1dEeEFCR0FNaURSSUxJZ2tKQUFBQUFBQ0FTMEFxRFNnQ1dna0pBQUFBQUFBQUlFQm85QU9pQWVvT0V1Y09DQU5DR2pJWUNoWUtER1psWld4cGJtZEpiV0ZuWlJJR1kyczFlbkZxZ2dFVENoRlRZMkZtWm05c1pGOWlZalEwTXpCaGRKSUJydzRTckE1RFFVVlRNMEZ3UkdGRmNFVlpha2t4VFVac1dHSklWbUZYUlhCdFdsZHdSbVZyTlhSWk0yeGFZbXRHVkdJeFJtcFRNRkpIVTI1YWEwMVViSFpVVnpWclkyMUdTR0pJVG1sbFJYaFJVVmhrZGxReFRsaE5WMmhoVFd4YWJWUlhjRzlOVlRFMldUTnNZVll6WkZwUmJteE1UVlZHTmxNd1VrSmxSVVpEVWpCR1RtRlZVbE5UVlhoS1dqSjBTMUZWUmtKUlZVWkNVVEJHVkUxRlJuaFNSazV1VVRGa2JtRXdjRUpSVlVaQ1VWVkdRbEZWYkVaUmJUZzFVVlU1Y0ZGWFVtcFJNRll3VlZWT1JGRlZNVFZpV0dSS1ZUSXhRbE50T1d0VFJrb3pXVE53ZG1ScmQzcFViWEJwVFdwVmQxZHNZekZOUlhoMVlVUlNUV0pXY0hCWFZFcFRaRlY0ZEU1WGVHdFJlbXQ1VkVST1VtVkZlSEZTVkVaUFpXeFdOVlJHVW5Ka2F6VkZXWHBDVUZKRlZYZFViWEJDWkRGb05sWlVVazlsYldRMlZEQlNUbVZWTlRaV1dHUk9Wa1V3ZUZSc1dUUmxhemxWWVhwV1QxWkZiRFJVTUZKU1RWVTFObEpVUWs1bGEwWTFWRlZTVWs1V1ozbE9TRlpxVW5wV2RWVkVSVFZrVm10NFQxZHdXbGRHUlRWVVZsSkNUbFZ3ZEZSdGNGcGhha0kwVkVaU2FtSldaM2xPVjNCWlRUQTFkMWRyVVhka01ERkZVMVJDWVdKVk1YUlhSRWt4WVd4bmVVOVhPVnBsYWtaMVZsZDRRMWRYVm5GaVJFNVBVbFpLZEZsNlJrWk5Na1YzVGxSS1lVMUdjREZXVkVaWFkwWldWRmR0V21saVZUVnRWMVprVWs5WFZuQk5XRkpMWWtSc01WZFVSVFZoYlVaWVZWUnNUbEV4Y0cxWmJURlBXbTFXZFZWVWJFNWhhekYwVjBSSk1XRnNaM2xoUkVKUlYwVTFjVmxxU1RGTlJuQllUbFJDVFdKdFp6QlRiVEExWWpGQ1ZWRlljRmxOVlZWNlYxUkNVbVZHYjNkYVJrWm9UVVJHY2xSWGNHOVNWMDUxVld0T2JGSXpVa1JhU0hCclZXczFTRk51V2xSaGJIQllWVEl3TVUweGJITlJiRUpUWWxVd2VGVnFSa2RTUm1SWVRWaG9WRlp0YUVoV2JHUkxUVEJ3ZEU5WGVGRldSbXQ2VlZod1MxRXhSWGRWYTFaU1lVaGtOVkl5WkhaWFZVNXVUbGh3YVZZeWVIcFhiRlp6WkVac1dGcEhlRlpTTUZsM1dWVktTbEl5VmxWWFZFcGhZbFJHZGxveVpFWldSVTV2VW14U1drMXJXblJYYlRBMVl6RndSMDlYYkdGTmFsVjRXV3BLYzA1c2NIcFJWVXBDVjBWc1dGSXlaSEpUYTBaQ1VWVkdRbEZWUmtKUlZVWkNZVlZPVW1Fd1JrSlJWVVpDVVZWR1JXUXhRWHBpTUU1SVVWWkJNbEZZWkVWbFZVcFNUVVpPUkZWWGRFSlJWVVpDVVZWR1FsSklaRkZsUnpsQ1YxZGtSVkV3UmxKUlZrNXlWVlV4VEZKWGRFOWtiVXAxVlcxb2FGWjZWbk5aTW5jMFRXczBlbUV6Wkd4U01EUjVWMjVvYmxGcmJIQlBXR3hIWVVjNVMxRXhSa0pSVlVaQ1VWVkdRbEZWUmtKVFYyUnlVMnRHUWxGVlJrSlJWVVpDVDBWUk5VNXJSbTlhTUZGeVdqQXhRazlIWkZaVWExWnVZVEJ3UWxGVlJrSlJWVVpDVVZSb1JVOUhSa0pTTUhoTVVWWktTbU5yVG01WGFrNXNVMFUxTUZScmFFWlZNR3hTWWpGU1JGb3lkM2RYYkdodlRVWmFkRkp1VG10V01WWlVVVzAxYTA1SFRYbE5SRUpxVld0c1RGSlhaRzlTUmxGM1RsWldWRlpVVmxkVmJFcExWMnRPYmxkdVNtdGlWRVV5V2tjMVVsVXhVak5pTVU1RVdqSm9jbGxXYUU5aFJteDBaVWQ0WVZGcmJFaFpWRTVoWkVkV2RWZHFRa3BoYlhSS1VUSjRTazFWVm5Cak1VNU1WVmRrVGxWWGJFSmhWV2h1WWpKR1JGcDZWa2hYYkdSWFl6SkdXRTVYTlZaaVZscHZXWHBKTldSWFRqUlRWV3hQVWpCd2RWcEZhR3RoVm14MFlURkdRbFpYT1VWaE1tUktVVlZXYmxOVmRFSlJNR3hFVVRCR1JsVXdkRzVpTUdSaFYwVTFOVmxWWkhKT1ZWWndVVlYwUjFveU9VNVpNakZYVFd4d1dWTnVjR0ZXVlRVeVdXdGpOV1ZWVm01WGJYaHFUVEJ3ZGxsV1VuSlZNRXB2VTFWV2ExTkZiM2hYYkZKS1ZsVk9iMU5yVW1sTmFsVjNWMVprYzJSV2NGbFRiVnBxVWpGd00xcEhNV3RqVjA1eFV6QjBRbFl3UmxSVk1VWjJVMVUwZVZWdVZrNU5ha1p4V2xjMVFsVXhRbE5UV0dSR1VWVldhRkpzVWtwV1JVNXZVbXhTV2sxclduUlhiVEExWXpGd1IwOVhiRnBoYkVWM1ZGaHdRMkZIVWtSUlZVWllZVVV4VEZKV1drOWhiR3hZVjIweGFVMXVhSEpYUkVwTFlWVTFSVlZZY0U1U01GbDNZMWRrU2xOWFNYbGpla3BwVWpGYU1WcFhjRUpaVlZZeldqQjBSbHA2YUV4UmJHTTFaRlphU0ZKdVpFWmFNWEExVkZjeFYySXlTa2xYUlU1Q1ZWVlNURkZXU2xKVE1GWnlWRzVhYVdKc1NtOVpWbU14WWtkT2MwOVlaR0ZpYTBsNVYycEtkMlZWTVc5YU1GSktZVlpzYUZKV1NrSlJhMlJDVTFoR1JHVlhPVXRSTVVaQ1VWVkdRbEZWUmtKUk1taENTekprVGxGVWFHNVdWVFZHV2pKMFMxRlZSa0pSVlVaQ1VWVkZORkpFYUdoUlZURktVV3RHUTFvd1NrcGhNV3hNVWpGR2RsUnJWbTVqTW14RVZWZDBRbEZWUmtKUlZVWkNVV3M1VWxGcmJFWldNbVJEWVZWR1JGTlZSbFphTUVvMVVtMW9kbE5yVGxKUlZVWkNVVlZHUWxGVlJrSlJWV3h1WVRCd1FsRlZSa0pSVlVaQ1VWUm9SVXg2V2tKa01GSTFVV3hGZDFVd1RsSmhNRVpDVVZWR1FsRlZSa1ZrTVVJMFlqQkdNMW93VmtMQUFRRnlGaG9KQ1FBQUFBQUFBQUFBSWdrSkFBQUFBQUFBOEQ5NkFoZ0QrZ01BOGdVTkVna0pBQUFBQUFBQThEOGFBR0lBd2dFQUVwWURDaEpEYjI1MFlXbHVaWEpmZG5WM00ybHRkRFlZQVNJcmNoWWFDUWtBQUFBQUFBQUFBQ0lKQ1FBQUFBQUFBUEEvK2dNQThnVU5FZ2tKQUFBQUFBQUE4RDhhQUdMVEFSSXJDZ1ozZUhOdE5IRVNJUW9UQ2dsMFpYaDBWbUZzZFdVU0JuZDRjMjAwY1JJS0VnaERUMDVVU1U1VlJSSmlDZ1pyZG0xNmRuUVNXQW9TQ2doa2FYTmhZbXhsWkJJR2EzWnRlblowSWtJSUNsSStFaTRTTEFnTVFpTWlJUW9kQ2hGVGVXMXdkR2h2YlhOVFpXeGxZM1JsWkJJSWVYQnRiWFl4WjJRUUFVb0RrZ0lBRWdnS0JoSUVkSEoxWlNJQ0NBSVNLZ29HWlhOeWFHazVFaUFLRmdvTWNtVjJaWEp6WlVOdmJHOXlFZ1psYzNKb2FUa1NCaElFZEhKMVpUSVVDaEpEYjI1MFlXbHVaWEpmY0dad2RtZHFjaktLQVdBU1NRb0ljbTU2YlRGc2J6a1NQUkl3RUFFYUZUSVRDaEZUWTJGbVptOXNaRjkyYnpKbGMzVTRhaUFBV2hNS0VWTmpZV1ptYjJ4a1gzWnZNbVZ6ZFRocXFnSUliMmQ0Ym1Ga2RYUWFFd2dLRWc4S0JXOXVWR0Z3RWdaeU1tVm9iSFhDQVFES0FSUUtFa052Ym5SaGFXNWxjbDl3Wm5CMloycHlNaGdESWlZYUVSQUJHQUlxQ3lvSkNRQUFBQUFBQUNoQStnTUE4Z1VORWdrSkFBQUFBQUFBOEQ4YUFNSUJBQmdCSWtZS0dRb05FZ3NpQ1FrQUFBQUFBQUJPUUJJRVdnQmlBQ0lBVWdCeUZob0pDUUFBQUFBQUFBQUFJZ2tKQUFBQUFBQUE4RC82QXdEeUJRMFNDUWtBQUFBQUFBRHdQeG9Bd2dFQQ==';

  final String feelingImage;

  @override
  State<AddLog4Widget> createState() => _AddLog4WidgetState();
}

class _AddLog4WidgetState extends State<AddLog4Widget> {
  late AddLog4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddLog4Model());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFF9398E), Color(0xFFF671AC)],
              stops: [0.0, 1.0],
              begin: AlignmentDirectional(0.0, -1.0),
              end: AlignmentDirectional(0, 1.0),
            ),
          ),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _model.addLogPageViewController ??=
                    PageController(initialPage: 0),
                scrollDirection: Axis.horizontal,
                children: [
                  Stack(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: const BoxDecoration(),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 80.0),
                              child: SingleChildScrollView(
                                primary: false,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 80.0, 0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://scontent.xx.fbcdn.net/v/t1.15752-9/474899035_1360758281769132_8081458168697795439_n.png?_nc_cat=101&ccb=1-7&_nc_sid=0024fc&_nc_ohc=FZfNmujJZ0gQ7kNvgHv1xpU&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gFyV00-n6-7C36sEqHDbLteY67njWqo8zDBAmLU5ATmeQ&oe=67C2EA6A',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: Text(
                                        'Leave a note.',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              fontFamily: 'Quicksand',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              fontSize: 28.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 80.0, 20.0, 0.0),
                                        child: Text(
                                          'Daily Hightlights',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Quicksand',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: Builder(
                                          builder: (context) {
                                            final dailyHightlight = FFAppState()
                                                .FeelingReasons
                                                .toList();

                                            return SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: List.generate(
                                                    dailyHightlight.length,
                                                    (dailyHightlightIndex) {
                                                  final dailyHightlightItem =
                                                      dailyHightlight[
                                                          dailyHightlightIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                valueOrDefault<
                                                                    double>(
                                                                  dailyHightlightIndex ==
                                                                          0
                                                                      ? 20.0
                                                                      : 0.0,
                                                                  0.0,
                                                                ),
                                                                0.0,
                                                                0.0,
                                                                0.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            12.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            FFAppState()
                                                                .FeelingReasons
                                                                .elementAtOrNull(
                                                                    dailyHightlightIndex),
                                                            'Familly',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Quicksand',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }).divide(
                                                    const SizedBox(width: 12.0)),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 20.0, 20.0, 0.0),
                                        child: Text(
                                          'Symptoms',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Quicksand',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: Builder(
                                          builder: (context) {
                                            final symptoms = FFAppState()
                                                .SympthomsSelected
                                                .toList();

                                            return SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: List.generate(
                                                    symptoms.length,
                                                    (symptomsIndex) {
                                                  final symptomsItem =
                                                      symptoms[symptomsIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                valueOrDefault<
                                                                    double>(
                                                                  symptomsIndex ==
                                                                          0
                                                                      ? 20.0
                                                                      : 0.0,
                                                                  0.0,
                                                                ),
                                                                0.0,
                                                                0.0,
                                                                0.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            12.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            FFAppState()
                                                                .SympthomsSelected
                                                                .elementAtOrNull(
                                                                    symptomsIndex),
                                                            'Headache',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Quicksand',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }).divide(
                                                    const SizedBox(width: 12.0)),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 32.0, 20.0, 0.0),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        child: TextFormField(
                                          controller: _model.textController1,
                                          focusNode: _model.textFieldFocusNode1,
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Quicksand',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Title',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .override(
                                                      fontFamily: 'Quicksand',
                                                      color: const Color(0xD9FFFFFF),
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            filled: true,
                                            fillColor: const Color(0x2A000000),
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 24.0, 20.0, 24.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Quicksand',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          validator: _model
                                              .textController1Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 12.0, 20.0, 0.0),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        child: TextFormField(
                                          controller: _model.textController2,
                                          focusNode: _model.textFieldFocusNode2,
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Quicksand',
                                                      color: const Color(0xD8FFFFFF),
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Add note...',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .override(
                                                      fontFamily: 'Quicksand',
                                                      fontSize: 20.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            filled: true,
                                            fillColor: const Color(0x2A000000),
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 24.0, 20.0, 24.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Quicksand',
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                              ),
                                          maxLines: null,
                                          minLines: 5,
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          validator: _model
                                              .textController2Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 100.0,
                            decoration: const BoxDecoration(
                              color: Color(0x00FFFFFF),
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 1.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.safePop();
                                    },
                                    child: Container(
                                      height: 42.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.keyboard_backspace_rounded,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        size: 42.0,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.goNamed('Home');
                                    },
                                    child: Container(
                                      width: 42.0,
                                      height: 42.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0x2A000000),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.close_rounded,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        size: 30.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: Container(
                          height: 60.0,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    widget.feelingImage,
                                    height: 55.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 1.0),
                                  child: wrapWithModel(
                                    model: _model.primaryButtonModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: PrimaryButtonWidget(
                                      textValue: 'FINISH',
                                      disabled: (FFAppState()
                                              .SympthomsSelected
                                              .isNotEmpty) !=
                                          true,
                                      reverseColor: true,
                                      onTap: () async {
                                        FFAppState().SympthomsSelected = [];
                                        FFAppState().FeelingReasons = [];
                                        safeSetState(() {});

                                        context.pushNamed('Home');
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 12.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [],
                  ),
                  const Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
