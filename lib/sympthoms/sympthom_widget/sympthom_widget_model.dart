import '/flutter_flow/flutter_flow_util.dart';
import '/sympthoms/sympthoms_card/sympthoms_card_widget.dart';
import 'sympthom_widget_widget.dart' show SympthomWidgetWidget;
import 'package:flutter/material.dart';

class SympthomWidgetModel extends FlutterFlowModel<SympthomWidgetWidget> {
  ///  Local state fields for this component.

  bool showCards = false;

  List<int> selected = [];
  void addToSelected(int item) => selected.add(item);
  void removeFromSelected(int item) => selected.remove(item);
  void removeAtIndexFromSelected(int index) => selected.removeAt(index);
  void insertAtIndexInSelected(int index, int item) =>
      selected.insert(index, item);
  void updateSelectedAtIndex(int index, Function(int) updateFn) =>
      selected[index] = updateFn(selected[index]);

  int counter = 0;

  ///  State fields for stateful widgets in this component.

  // Model for SympthomsCard component.
  late SympthomsCardModel sympthomsCardModel1;
  // Model for SympthomsCard component.
  late SympthomsCardModel sympthomsCardModel2;
  // Model for SympthomsCard component.
  late SympthomsCardModel sympthomsCardModel3;
  // Model for SympthomsCard component.
  late SympthomsCardModel sympthomsCardModel4;
  // Model for SympthomsCard component.
  late SympthomsCardModel sympthomsCardModel5;
  // Model for SympthomsCard component.
  late SympthomsCardModel sympthomsCardModel6;
  // Model for SympthomsCard component.
  late SympthomsCardModel sympthomsCardModel7;
  // Model for SympthomsCard component.
  late SympthomsCardModel sympthomsCardModel8;
  // Model for SympthomsCard component.
  late SympthomsCardModel sympthomsCardModel9;
  // Model for SympthomsCard component.
  late SympthomsCardModel sympthomsCardModel10;
  // Model for SympthomsCard component.
  late SympthomsCardModel sympthomsCardModel11;
  // Model for SympthomsCard component.
  late SympthomsCardModel sympthomsCardModel12;
  // Model for SympthomsCard component.
  late SympthomsCardModel sympthomsCardModel13;
  // Model for SympthomsCard component.
  late SympthomsCardModel sympthomsCardModel14;
  // Model for SympthomsCard component.
  late SympthomsCardModel sympthomsCardModel15;

  @override
  void initState(BuildContext context) {
    sympthomsCardModel1 = createModel(context, () => SympthomsCardModel());
    sympthomsCardModel2 = createModel(context, () => SympthomsCardModel());
    sympthomsCardModel3 = createModel(context, () => SympthomsCardModel());
    sympthomsCardModel4 = createModel(context, () => SympthomsCardModel());
    sympthomsCardModel5 = createModel(context, () => SympthomsCardModel());
    sympthomsCardModel6 = createModel(context, () => SympthomsCardModel());
    sympthomsCardModel7 = createModel(context, () => SympthomsCardModel());
    sympthomsCardModel8 = createModel(context, () => SympthomsCardModel());
    sympthomsCardModel9 = createModel(context, () => SympthomsCardModel());
    sympthomsCardModel10 = createModel(context, () => SympthomsCardModel());
    sympthomsCardModel11 = createModel(context, () => SympthomsCardModel());
    sympthomsCardModel12 = createModel(context, () => SympthomsCardModel());
    sympthomsCardModel13 = createModel(context, () => SympthomsCardModel());
    sympthomsCardModel14 = createModel(context, () => SympthomsCardModel());
    sympthomsCardModel15 = createModel(context, () => SympthomsCardModel());
  }

  @override
  void dispose() {
    sympthomsCardModel1.dispose();
    sympthomsCardModel2.dispose();
    sympthomsCardModel3.dispose();
    sympthomsCardModel4.dispose();
    sympthomsCardModel5.dispose();
    sympthomsCardModel6.dispose();
    sympthomsCardModel7.dispose();
    sympthomsCardModel8.dispose();
    sympthomsCardModel9.dispose();
    sympthomsCardModel10.dispose();
    sympthomsCardModel11.dispose();
    sympthomsCardModel12.dispose();
    sympthomsCardModel13.dispose();
    sympthomsCardModel14.dispose();
    sympthomsCardModel15.dispose();
  }
}
