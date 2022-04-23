import 'package:flutter/cupertino.dart';
import 'colors_theme.dart';

abstract class AppTextStyleTheme {
  // static const double ninetyEightSize = 98.0;
  // static const double fourtyFourSize = 44.0;
  static const double thirtySixSize = 36.0;
  // static const double thirtyTwoSize = 32.0;
  // static const double twentyEightSize = 28.0;
  // static const double twentyFourSize = 24.0;
  static const double twentyThreeSize = 23.0;
  static const double twentySize = 20.0;
  // static const double eighteenSize = 18.0;
  // static const double seventeenSize = 17.0;
  // static const double sixteenSize = 16.0;
  // static const double fourteenSize = 14.0;
  // static const double thirteenSize = 13.0;
  // static const double twelveSize = 12.0;
  // static const double tenSize = 10.0;
  // static const double eightSize = 8.0;

  static const FontWeight fontRegular = FontWeight.w400;
  static const FontWeight fontBold = FontWeight.w700;
  static const FontWeight fontExtraBold = FontWeight.w800;

  static const String fontFamily = 'Sen';

  static const TextStyle homePageTitleDefaultTextStyle = TextStyle(
    fontFamily: fontFamily,
    fontSize: thirtySixSize,
    fontWeight: fontRegular,
    color: ColorsTheme.black,
  );
  static final TextStyle homePageTitleColoredTextStyle = TextStyle(
    fontFamily: fontFamily,
    fontSize: thirtySixSize,
    fontWeight: fontBold,
    color: ColorsTheme.appDefaultPaletColor.shade700,
  );

  static const TextStyle homePageCoffeesListTextStyle = TextStyle(
    fontFamily: fontFamily,
    fontSize: twentySize,
    fontWeight: fontBold,
    color: ColorsTheme.defaultCoffeesNameColor,
  );

  static const TextStyle coffeeDetailsPageTitleTextStyle = TextStyle(
    fontFamily: fontFamily,
    fontSize: twentyThreeSize,
    fontWeight: fontBold,
    color: ColorsTheme.black,
  );

}

//   static final TextStyle pageTitleTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: twentyTwoSize,
//     fontWeight: FontWeight.w700,
//     color: ColorsTheme.neutral.shade700,
//   );
//   static final TextStyle pageSelectEditProfileTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: sixteenSize,
//     fontWeight: FontWeight.w500,
//     color: ColorsTheme.neutral.shade700,
//   );
//   static final TextStyle pageInfoHeadlineTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: twentySize,
//     fontWeight: FontWeight.w500,
//     color: ColorsTheme.neutral.shade700,
//   );
//   static final TextStyle modalTitleTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: twentySize,
//     fontWeight: FontWeight.w600,
//     color: ColorsTheme.neutral.shade700,
//   );
//   static final TextStyle defaultTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: fourteenSize,
//     fontWeight: FontWeight.w400,
//     color: ColorsTheme.neutral.shade700,
//   );
//   static final TextStyle defaultWhiteTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: fourteenSize,
//     fontWeight: FontWeight.w400,
//     color: ColorsTheme.neutral.shade100,
//   );
//   static final TextStyle defaultGrayTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: fourteenSize,
//     fontWeight: FontWeight.w400,
//     color: ColorsTheme.neutral.shade600,
//   );
//   static final TextStyle defaultPurpleTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: fourteenSize,
//     fontWeight: FontWeight.w400,
//     color: ColorsTheme.rede.shade600,
//   );
//   static final TextStyle labelInputFieldTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: fourteenSize,
//     fontWeight: FontWeight.w500,
//     color: ColorsTheme.neutral.shade500,
//   );
//   static final TextStyle textInputTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: fourteenSize,
//     fontWeight: FontWeight.w500,
//     color: ColorsTheme.neutral.shade700,
//   );
//   static final TextStyle camelCaseSensitive = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: twelveSize,
//     fontWeight: FontWeight.w500,
//     color: ColorsTheme.neutral.shade600,
//   );
//   static final TextStyle textInputUnabledTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: fourteenSize,
//     fontWeight: FontWeight.w500,
//     color: ColorsTheme.neutral.shade300,
//   );
//   static final TextStyle textInputIncorrectTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: fourteenSize,
//     fontWeight: FontWeight.w500,
//     color: ColorsTheme.semanticDanger.shade500,
//   );
//   static final TextStyle textButtonLogout = TextStyle(
//     fontSize: sixteenSize,
//     fontWeight: FontWeight.w500,
//     color: ColorsTheme.semanticDanger.shade500,
//   );
//   static final TextStyle buttonTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: sixteenSize,
//     fontWeight: FontWeight.w700,
//     color: ColorsTheme.neutral.shade100,
//   );
//   static final TextStyle buttonOutlinedTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: sixteenSize,
//     fontWeight: FontWeight.w700,
//     color: ColorsTheme.rede.shade700,
//   );
//   static final TextStyle warningIncorrectInputTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: fourteenSize,
//     fontWeight: FontWeight.w500,
//     color: ColorsTheme.semanticDanger.shade600,
//   );
//   static final TextStyle editProfileOptionsTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: sixteenSize,
//     fontWeight: FontWeight.w500,
//     color: ColorsTheme.neutral.shade700,
//   );
//   static final TextStyle profileAwardsSmallTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: twelveSize,
//     fontWeight: FontWeight.w400,
//     color: ColorsTheme.rede.shade100,
//   );
//   static final TextStyle profileAwardsBigTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: twentyEightSize,
//     fontWeight: FontWeight.w400,
//     color: ColorsTheme.rede.shade100,
//   );
//   static final TextStyle profileInitialsUserNameTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: twentyEightSize,
//     fontWeight: FontWeight.w400,
//     color: ColorsTheme.rede.shade100,
//   );
//   static final TextStyle profileTitleTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: twentyFourSize,
//     fontWeight: FontWeight.w700,
//     color: ColorsTheme.rede.shade100,
//   );
//   static final TextStyle profileFirstNameLastNameTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: twentyFourSize,
//     fontWeight: FontWeight.w700,
//     color: ColorsTheme.neutral.shade700,
//   );
//   static const TextStyle categoryGridTitleTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: thirteenSize,
//     fontWeight: FontWeight.w600,
//   );

//   static const TextStyle trailListTitleFloraTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: thirteenSize,
//     fontWeight: FontWeight.w600,
//     color: ColorsTheme.flora,
//   );

//   static final TextStyle warningIncorrectInputPasswordTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: tenSize,
//     fontWeight: FontWeight.w500,
//     color: ColorsTheme.neutral.shade500,
//   );

//   static final TextStyle subtitleModalTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: sixteenSize,
//     fontWeight: FontWeight.w400,
//     color: ColorsTheme.neutral.shade500,
//   );

//   static final TextStyle avatarUserTextStyle = TextStyle(
//     fontSize: fourtyFourSize,
//     fontWeight: FontWeight.w900,
//     color: ColorsTheme.rede.shade700,
//   );

//   static final TextStyle avatarUserSmallTextStyle = TextStyle(
//     fontSize: seventeenSize,
//     fontWeight: FontWeight.w900,
//     color: ColorsTheme.rede.shade700,
//   );

//   static final TextStyle smallGrayExplanationTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: twelveSize,
//     fontWeight: FontWeight.w400,
//     color: ColorsTheme.neutral.shade500,
//   );

//   static final TextStyle trailItemNameTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: sixteenSize,
//     fontWeight: FontWeight.w600,
//     color: ColorsTheme.neutral.shade700,
//   );

//   static final TextStyle rankingPodiumWidgetFirstPlaceAvatarInitialsTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: twentyTwoSize,
//     fontWeight: FontWeight.w700,
//     color: ColorsTheme.rede.shade700,
//   );

//   static final TextStyle rankingPodiumWidgetSecondPlaceAvatarInitialsTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: fourteenSize,
//     fontWeight: FontWeight.w700,
//     color: ColorsTheme.rede.shade700,
//   );

  
//   static final TextStyle numberHexaFeedbackTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: ninetyEightSize,
//     fontWeight: FontWeight.w700,
//     color: ColorsTheme.neutral.shade100,
//   );

//   static final TextStyle titleHexaFeedbackTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: sixteenSize,
//     fontWeight: FontWeight.w600,
//     color: ColorsTheme.rede.shade600,
//   );

//   static final TextStyle subtitleHexaFeedbackTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: twentyTwoSize,
//     fontWeight: FontWeight.w800,
//     color: ColorsTheme.neutral.shade700,);

//   static final TextStyle RankingListTilePositionTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: eighteenSize,
//     fontWeight: FontWeight.w800,
//     color: ColorsTheme.rede.shade700,
//   );

//   static final TextStyle RankingListTilePlayersNameInitialsTextStyle =
//       TextStyle(
//     fontFamily: fontFamily,
//     fontSize: twelveSize,
//     fontWeight: FontWeight.w700,
//     color: ColorsTheme.rede.shade700,
//   );

//   static final TextStyle rankingPodiumWidgetThirdPlaceAvatarInitialsTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: twelveSize,
//     fontWeight: FontWeight.w700,
//     color: ColorsTheme.rede.shade700,
//   );

//   static final TextStyle rankingPodiumWidgetHexagonColocationTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: twelveSize,
//     fontWeight: FontWeight.w800,
//     color: ColorsTheme.neutral.shade100,
//   );

//   static final TextStyle rankingPodiumWidgetDefaultTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: twelveSize,
//     fontWeight: FontWeight.w400,
//     color: ColorsTheme.neutral.shade100,
//   );

//    static final TextStyle rankingPodiumWidgetNumberOfRedesTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: eighteenSize,
//      fontWeight: FontWeight.w800,
//     color: ColorsTheme.neutral.shade100,
//   );
  
//   static final TextStyle RankingListTilePlayersNameTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: twelveSize,
//     fontWeight: FontWeight.w600,
//     color: ColorsTheme.blurColor,
//   );

//   static final TextStyle RankingListTileNumbersOfRedesTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: twelveSize,
//     fontWeight: FontWeight.w600,
//     color: ColorsTheme.rede.shade600,
//   );
    
//   static final TextStyle questionTitleTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: fourteenSize,
//     fontWeight: FontWeight.w700,
//     color: ColorsTheme.neutral.shade200,
//   );

//   static final TextStyle questionSubtitleTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: twelveSize,
//     fontWeight: FontWeight.w300,
//     color: ColorsTheme.neutral.shade200,
//   );

//   static final TextStyle questionStatementTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: fourteenSize,
//     fontWeight: FontWeight.w600,
//     color: ColorsTheme.neutral.shade700,
//   );

//   static final TextStyle questionOptionsTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: twelveSize,
//     fontWeight: FontWeight.w500,
//     color: ColorsTheme.neutral.shade700,
//   );

//   static final TextStyle questionOptionsSelectedTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: twelveSize,
//     fontWeight: FontWeight.w500,
//     color: ColorsTheme.neutral.shade100,
//   );

 
//   static final TextStyle questionOptionsWrongTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: twelveSize,
//     fontWeight: FontWeight.w500,
//     color: ColorsTheme.neutral.shade500,
//   );

//   static final TextStyle questionCurrentIndexIndicationTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: fourteenSize,
//     fontWeight: FontWeight.w800,
//   );
  
//   static final TextStyle gameOverTitleTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: sixteenSize,
//     fontWeight: FontWeight.w700,
//     color: ColorsTheme.neutral.shade700,
//   );

//   static final TextStyle gameOverSubtitleTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: sixteenSize,
//     fontWeight: FontWeight.w800,
//     color: ColorsTheme.neutral.shade700,
//   );

//   static final TextStyle rankingPageTitleTextStyle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: twentyTwoSize,
//     fontWeight: FontWeight.w700,
//     color: ColorsTheme.rede.shade100,
//   );
// }
