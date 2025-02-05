import '/components/app_bar_widget.dart';
import '/components/home/hero_section_daily_article/hero_section_daily_article_widget.dart';
import '/components/home/hero_section_discover_wide/hero_section_discover_wide_widget.dart';
import '/components/home/hero_section_trimester/hero_section_trimester_widget.dart';
import '/components/learn_more_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'blog_widget.dart' show BlogWidget;
import 'package:flutter/material.dart';

class BlogModel extends FlutterFlowModel<BlogWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeroSectionDailyArticle component.
  late HeroSectionDailyArticleModel heroSectionDailyArticleModel1;
  // Model for HeroSectionDailyArticle component.
  late HeroSectionDailyArticleModel heroSectionDailyArticleModel2;
  // Model for HeroSectionTrimester component.
  late HeroSectionTrimesterModel heroSectionTrimesterModel;
  // Model for HeroSectionDiscoverWide component.
  late HeroSectionDiscoverWideModel heroSectionDiscoverWideModel;
  // Model for LearnMoreCard component.
  late LearnMoreCardModel learnMoreCardModel1;
  // Model for LearnMoreCard component.
  late LearnMoreCardModel learnMoreCardModel2;
  // Model for LearnMoreCard component.
  late LearnMoreCardModel learnMoreCardModel3;
  // Model for LearnMoreCard component.
  late LearnMoreCardModel learnMoreCardModel4;
  // Model for LearnMoreCard component.
  late LearnMoreCardModel learnMoreCardModel5;
  // Model for LearnMoreCard component.
  late LearnMoreCardModel learnMoreCardModel6;
  // Model for LearnMoreCard component.
  late LearnMoreCardModel learnMoreCardModel7;
  // Model for AppBar component.
  late AppBarModel appBarModel;

  @override
  void initState(BuildContext context) {
    heroSectionDailyArticleModel1 =
        createModel(context, () => HeroSectionDailyArticleModel());
    heroSectionDailyArticleModel2 =
        createModel(context, () => HeroSectionDailyArticleModel());
    heroSectionTrimesterModel =
        createModel(context, () => HeroSectionTrimesterModel());
    heroSectionDiscoverWideModel =
        createModel(context, () => HeroSectionDiscoverWideModel());
    learnMoreCardModel1 = createModel(context, () => LearnMoreCardModel());
    learnMoreCardModel2 = createModel(context, () => LearnMoreCardModel());
    learnMoreCardModel3 = createModel(context, () => LearnMoreCardModel());
    learnMoreCardModel4 = createModel(context, () => LearnMoreCardModel());
    learnMoreCardModel5 = createModel(context, () => LearnMoreCardModel());
    learnMoreCardModel6 = createModel(context, () => LearnMoreCardModel());
    learnMoreCardModel7 = createModel(context, () => LearnMoreCardModel());
    appBarModel = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    heroSectionDailyArticleModel1.dispose();
    heroSectionDailyArticleModel2.dispose();
    heroSectionTrimesterModel.dispose();
    heroSectionDiscoverWideModel.dispose();
    learnMoreCardModel1.dispose();
    learnMoreCardModel2.dispose();
    learnMoreCardModel3.dispose();
    learnMoreCardModel4.dispose();
    learnMoreCardModel5.dispose();
    learnMoreCardModel6.dispose();
    learnMoreCardModel7.dispose();
    appBarModel.dispose();
  }
}
