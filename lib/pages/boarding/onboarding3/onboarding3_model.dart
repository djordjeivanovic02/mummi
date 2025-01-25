import '/components/onboarding_answer_widget.dart';
import '/components/onboarding_progres_bar_widget.dart';
import '/components/primary_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'onboarding3_widget.dart' show Onboarding3Widget;
import 'package:flutter/material.dart';

class Onboarding3Model extends FlutterFlowModel<Onboarding3Widget> {
  ///  Local state fields for this page.

  double? progress = 0.0;

  ///  State fields for stateful widgets in this page.

  // Model for OnboardingProgresBar component.
  late OnboardingProgresBarModel onboardingProgresBarModel;
  // State field(s) for OnBoardingSlider widget.
  PageController? onBoardingSliderController;

  int get onBoardingSliderCurrentIndex => onBoardingSliderController != null &&
          onBoardingSliderController!.hasClients &&
          onBoardingSliderController!.page != null
      ? onBoardingSliderController!.page!.round()
      : 0;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for OnboardingAnswer component.
  late OnboardingAnswerModel onboardingAnswerModel1;
  // Model for OnboardingAnswer component.
  late OnboardingAnswerModel onboardingAnswerModel2;
  DateTime? datePicked;
  // Model for OnboardingAnswer component.
  late OnboardingAnswerModel onboardingAnswerModel3;
  // Model for OnboardingAnswer component.
  late OnboardingAnswerModel onboardingAnswerModel4;
  // Model for OnboardingAnswer component.
  late OnboardingAnswerModel onboardingAnswerModel5;
  // Model for OnboardingAnswer component.
  late OnboardingAnswerModel onboardingAnswerModel6;
  // Model for OnboardingAnswer component.
  late OnboardingAnswerModel onboardingAnswerModel7;
  // Model for OnboardingAnswer component.
  late OnboardingAnswerModel onboardingAnswerModel8;
  // Model for OnboardingAnswer component.
  late OnboardingAnswerModel onboardingAnswerModel9;
  // Model for OnboardingAnswer component.
  late OnboardingAnswerModel onboardingAnswerModel10;
  // Model for OnboardingAnswer component.
  late OnboardingAnswerModel onboardingAnswerModel11;
  // Model for PrimaryButton component.
  late PrimaryButtonModel primaryButtonModel;

  @override
  void initState(BuildContext context) {
    onboardingProgresBarModel =
        createModel(context, () => OnboardingProgresBarModel());
    onboardingAnswerModel1 =
        createModel(context, () => OnboardingAnswerModel());
    onboardingAnswerModel2 =
        createModel(context, () => OnboardingAnswerModel());
    onboardingAnswerModel3 =
        createModel(context, () => OnboardingAnswerModel());
    onboardingAnswerModel4 =
        createModel(context, () => OnboardingAnswerModel());
    onboardingAnswerModel5 =
        createModel(context, () => OnboardingAnswerModel());
    onboardingAnswerModel6 =
        createModel(context, () => OnboardingAnswerModel());
    onboardingAnswerModel7 =
        createModel(context, () => OnboardingAnswerModel());
    onboardingAnswerModel8 =
        createModel(context, () => OnboardingAnswerModel());
    onboardingAnswerModel9 =
        createModel(context, () => OnboardingAnswerModel());
    onboardingAnswerModel10 =
        createModel(context, () => OnboardingAnswerModel());
    onboardingAnswerModel11 =
        createModel(context, () => OnboardingAnswerModel());
    primaryButtonModel = createModel(context, () => PrimaryButtonModel());
  }

  @override
  void dispose() {
    onboardingProgresBarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    onboardingAnswerModel1.dispose();
    onboardingAnswerModel2.dispose();
    onboardingAnswerModel3.dispose();
    onboardingAnswerModel4.dispose();
    onboardingAnswerModel5.dispose();
    onboardingAnswerModel6.dispose();
    onboardingAnswerModel7.dispose();
    onboardingAnswerModel8.dispose();
    onboardingAnswerModel9.dispose();
    onboardingAnswerModel10.dispose();
    onboardingAnswerModel11.dispose();
    primaryButtonModel.dispose();
  }
}
