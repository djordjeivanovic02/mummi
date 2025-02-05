import '/components/app_bar_widget.dart';
import '/components/home/hero_section_daily_article/hero_section_daily_article_widget.dart';
import '/components/home/hero_section_discover_wide/hero_section_discover_wide_widget.dart';
import '/components/home/hero_section_trimester/hero_section_trimester_widget.dart';
import '/components/home/hero_section_trimester_wide/hero_section_trimester_wide_widget.dart';
import '/components/home/hero_section_week/hero_section_week_widget.dart';
import '/components/home/hero_top_widget/hero_top_widget_widget.dart';
import '/components/learn_more_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeroTopWidget component.
  late HeroTopWidgetModel heroTopWidgetModel1;
  // Model for HeroTopWidget component.
  late HeroTopWidgetModel heroTopWidgetModel2;
  // Model for HeroSectionTrimester component.
  late HeroSectionTrimesterModel heroSectionTrimesterModel1;
  // Model for HeroSectionTrimester component.
  late HeroSectionTrimesterModel heroSectionTrimesterModel2;
  // Model for HeroSectionTrimesterWide component.
  late HeroSectionTrimesterWideModel heroSectionTrimesterWideModel1;
  // Model for HeroSectionTrimesterWide component.
  late HeroSectionTrimesterWideModel heroSectionTrimesterWideModel2;
  // Model for HeroSectionWeek component.
  late HeroSectionWeekModel heroSectionWeekModel1;
  // Model for HeroSectionWeek component.
  late HeroSectionWeekModel heroSectionWeekModel2;
  // Model for HeroSectionWeek component.
  late HeroSectionWeekModel heroSectionWeekModel3;
  // Model for HeroSectionDailyArticle component.
  late HeroSectionDailyArticleModel heroSectionDailyArticleModel1;
  // Model for HeroSectionDailyArticle component.
  late HeroSectionDailyArticleModel heroSectionDailyArticleModel2;
  // Model for HeroSectionDiscoverWide component.
  late HeroSectionDiscoverWideModel heroSectionDiscoverWideModel;
  // Model for LearnMoreCard component.
  late LearnMoreCardModel learnMoreCardModel1;
  // Model for LearnMoreCard component.
  late LearnMoreCardModel learnMoreCardModel2;
  // Model for AppBar component.
  late AppBarModel appBarModel;

  @override
  void initState(BuildContext context) {
    heroTopWidgetModel1 = createModel(context, () => HeroTopWidgetModel());
    heroTopWidgetModel2 = createModel(context, () => HeroTopWidgetModel());
    heroSectionTrimesterModel1 =
        createModel(context, () => HeroSectionTrimesterModel());
    heroSectionTrimesterModel2 =
        createModel(context, () => HeroSectionTrimesterModel());
    heroSectionTrimesterWideModel1 =
        createModel(context, () => HeroSectionTrimesterWideModel());
    heroSectionTrimesterWideModel2 =
        createModel(context, () => HeroSectionTrimesterWideModel());
    heroSectionWeekModel1 = createModel(context, () => HeroSectionWeekModel());
    heroSectionWeekModel2 = createModel(context, () => HeroSectionWeekModel());
    heroSectionWeekModel3 = createModel(context, () => HeroSectionWeekModel());
    heroSectionDailyArticleModel1 =
        createModel(context, () => HeroSectionDailyArticleModel());
    heroSectionDailyArticleModel2 =
        createModel(context, () => HeroSectionDailyArticleModel());
    heroSectionDiscoverWideModel =
        createModel(context, () => HeroSectionDiscoverWideModel());
    learnMoreCardModel1 = createModel(context, () => LearnMoreCardModel());
    learnMoreCardModel2 = createModel(context, () => LearnMoreCardModel());
    appBarModel = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    heroTopWidgetModel1.dispose();
    heroTopWidgetModel2.dispose();
    heroSectionTrimesterModel1.dispose();
    heroSectionTrimesterModel2.dispose();
    heroSectionTrimesterWideModel1.dispose();
    heroSectionTrimesterWideModel2.dispose();
    heroSectionWeekModel1.dispose();
    heroSectionWeekModel2.dispose();
    heroSectionWeekModel3.dispose();
    heroSectionDailyArticleModel1.dispose();
    heroSectionDailyArticleModel2.dispose();
    heroSectionDiscoverWideModel.dispose();
    learnMoreCardModel1.dispose();
    learnMoreCardModel2.dispose();
    appBarModel.dispose();
  }
}
