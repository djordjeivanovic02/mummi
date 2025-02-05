import '/components/input_controls/buttons/primary_button/primary_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_log1_widget.dart' show AddLog1Widget;
import 'package:flutter/material.dart';

class AddLog1Model extends FlutterFlowModel<AddLog1Widget> {
  ///  Local state fields for this page.

  String currentFeelingImage =
      'https://scontent.xx.fbcdn.net/v/t1.15752-9/474814600_587838327501355_3999521845714302049_n.png?_nc_cat=109&ccb=1-7&_nc_sid=0024fc&_nc_ohc=gRPXz9w4DfsQ7kNvgFnSUiQ&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gGPkMd28DrtBxkBw7Q4boJ6VJnwbPOFc5GQCYmqIXFUbw&oe=67C2BCDD';

  double currentSliderValue = 8.0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for AddLogPageView widget.
  PageController? addLogPageViewController;

  int get addLogPageViewCurrentIndex => addLogPageViewController != null &&
          addLogPageViewController!.hasClients &&
          addLogPageViewController!.page != null
      ? addLogPageViewController!.page!.round()
      : 0;
  // State field(s) for Slider widget.
  double? sliderValue;
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
