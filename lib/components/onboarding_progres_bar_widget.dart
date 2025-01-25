import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'onboarding_progres_bar_model.dart';
export 'onboarding_progres_bar_model.dart';

class OnboardingProgresBarWidget extends StatefulWidget {
  const OnboardingProgresBarWidget({
    super.key,
    required this.value,
  });

  final double? value;

  @override
  State<OnboardingProgresBarWidget> createState() =>
      _OnboardingProgresBarWidgetState();
}

class _OnboardingProgresBarWidgetState
    extends State<OnboardingProgresBarWidget> {
  late OnboardingProgresBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnboardingProgresBarModel());

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
      child: Stack(
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: CircularPercentIndicator(
              percent: widget.value!,
              radius: 78.0,
              lineWidth: 10.0,
              animation: true,
              animateFromLastPercent: true,
              progressColor: const Color(0xFFF671AC),
              backgroundColor: const Color(0xFFEEEEEE),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: SizedBox(
              width: 156.0,
              height: 156.0,
              child: Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: SvgPicture.asset(
                        'assets/images/logo.svg',
                        width: 124.0,
                        height: 124.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
