import '/components/input_controls/buttons/primary_button/primary_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'onboarding4_widget.dart' show Onboarding4Widget;
import 'package:flutter/material.dart';

class Onboarding4Model extends FlutterFlowModel<Onboarding4Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for OnBoardingSlider widget.
  PageController? onBoardingSliderController;

  int get onBoardingSliderCurrentIndex => onBoardingSliderController != null &&
          onBoardingSliderController!.hasClients &&
          onBoardingSliderController!.page != null
      ? onBoardingSliderController!.page!.round()
      : 0;
  // Model for PrimaryButton component.
  late PrimaryButtonModel primaryButtonModel;

  @override
  void initState(BuildContext context) {
    primaryButtonModel = createModel(context, () => PrimaryButtonModel());
  }

  @override
  void dispose() {
    primaryButtonModel.dispose();
  }
}
