import '/components/input_controls/buttons/primary_button/primary_button_widget.dart';
import '/components/onboarding_answer_widget.dart';
import '/components/onboarding_progres_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'onboarding3_widget.dart' show Onboarding3Widget;
import 'package:flutter/material.dart';

class Onboarding3Model extends FlutterFlowModel<Onboarding3Widget> {
  ///  Local state fields for this page.

  int currentPage = 1;

  double? progress = 0.2;

  int babyArrived = 0;

  List<int> goals = [];
  void addToGoals(int item) => goals.add(item);
  void removeFromGoals(int item) => goals.remove(item);
  void removeAtIndexFromGoals(int index) => goals.removeAt(index);
  void insertAtIndexInGoals(int index, int item) => goals.insert(index, item);
  void updateGoalsAtIndex(int index, Function(int) updateFn) =>
      goals[index] = updateFn(goals[index]);

  ///  State fields for stateful widgets in this page.

  // Model for OnboardingProgresBar component.
  late OnboardingProgresBarModel onboardingProgresBarModel;
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
    primaryButtonModel.dispose();
  }
}
