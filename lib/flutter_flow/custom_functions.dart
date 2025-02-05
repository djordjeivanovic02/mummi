import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/enums/enums.dart';

bool checkIsButtonDisabled(
  int currentPage,
  String? fullName,
  int? babyArrived,
  List<int>? goals,
  bool? isDatePicked,
) {
  switch (currentPage) {
    case 1:
      return fullName != null && fullName.isEmpty ? true : false;
    case 2:
      return babyArrived != null && babyArrived == 0 ? true : false;
    case 3:
      return isDatePicked != null && isDatePicked == false ? true : false;
    case 4:
      return goals != null && goals.isEmpty ? true : false;
    default:
      return true;
  }
}

bool checkIsOnBoardingGoalSelected(
  List<int> goals,
  int item,
) {
  return goals.contains(item);
}

String feelingSliderChange(double currentValue) {
  String sad =
      "https://scontent.xx.fbcdn.net/v/t1.15752-9/474823474_507486328585514_2095910827858630780_n.png?_nc_cat=105&ccb=1-7&_nc_sid=0024fc&_nc_ohc=pZ6p1ZMWL0MQ7kNvgEiO_pD&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gEXBdukex09gQmEfdyyZvE6fxQ48gpPVDHRWixVb0R0-Q&oe=67C2D51D";
  String meh =
      "https://scontent.xx.fbcdn.net/v/t1.15752-9/475506624_1151230349711411_2341823500771588688_n.png?_nc_cat=107&ccb=1-7&_nc_sid=0024fc&_nc_ohc=vZDoim3f-GEQ7kNvgFoN2Ap&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gEkI1eGyeh8kVdhSsI8XHATjWu_yw4h0CDX4yV6rpfpXQ&oe=67C2F8B0";
  String happy =
      "https://scontent.xx.fbcdn.net/v/t1.15752-9/474814600_587838327501355_3999521845714302049_n.png?_nc_cat=109&ccb=1-7&_nc_sid=0024fc&_nc_ohc=gRPXz9w4DfsQ7kNvgFnSUiQ&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gGPkMd28DrtBxkBw7Q4boJ6VJnwbPOFc5GQCYmqIXFUbw&oe=67C2BCDD";

  if (currentValue <= 3)
    return sad;
  else if (currentValue <= 7)
    return meh;
  else
    return happy;
}

String feelingSliderChangeText(double currentValue) {
  String res = "SO SAD";
  if (currentValue <= 3)
    res = "SO SAD";
  else if (currentValue <= 7)
    res = "MEH";
  else
    res = "PRETTY GOOD";

  return res;
}

bool chceckIsLogItemSelected(
  List<int> selectedItems,
  int item,
) {
  return selectedItems.contains(item);
}

int sympthomsCount(List<int> selected) {
  return selected.length;
}

bool checkSympthomSelected(
  List<String> lista,
  String element,
) {
  return lista.contains(element);
}

int countSelectedSymptoms(
  List<String>? selected,
  String group,
) {
  List<String> headOptions = [
    "Headache",
    "Dizziness",
    "Fiver",
    "Lightheadness",
  ];

  List<String> breastOptions = [
    "Pain",
    "Refux/Heatburn",
    "Shortness Of Breath",
  ];

  List<String> hipsOptions = ["Hip Pain"];

  List<String> abdomenOptions = [
    "Contractions",
    "Leak Pee",
    "Difficulty peeing"
  ];

  List<String> pevlicOptions = ["Varicose veins"];

  List<String> legsOptions = ["Varicose veins 2"];

  List<String> backOptions = ["Back Pain"];

  List<String> hemorrhoidsOptions = ["Back Pain 2"];

  if (selected == null) return 0;

  switch (group) {
    case "Head":
      return selected.where((symptom) => headOptions.contains(symptom)).length;
    case "Breast":
      return selected
          .where((symptom) => breastOptions.contains(symptom))
          .length;
    case "Hips":
      return selected.where((symptom) => hipsOptions.contains(symptom)).length;
    case "Lower Abdomen":
      return selected
          .where((symptom) => abdomenOptions.contains(symptom))
          .length;
    case "Pevlic Floor":
      return selected
          .where((symptom) => pevlicOptions.contains(symptom))
          .length;
    case "Legs":
      return selected.where((symptom) => legsOptions.contains(symptom)).length;
    case "Back":
      return selected.where((symptom) => backOptions.contains(symptom)).length;
    case "Hemorrhoids":
      return selected
          .where((symptom) => hemorrhoidsOptions.contains(symptom))
          .length;
    default:
      return 0;
  }
}
