import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_it.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('it')
  ];

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @italian.
  ///
  /// In en, this message translates to:
  /// **'Italian'**
  String get italian;

  /// No description provided for @daily_summary.
  ///
  /// In en, this message translates to:
  /// **'Daily Summary'**
  String get daily_summary;

  /// No description provided for @weekly_forecast.
  ///
  /// In en, this message translates to:
  /// **'Weekly Forecast'**
  String get weekly_forecast;

  /// No description provided for @sunny.
  ///
  /// In en, this message translates to:
  /// **'Sunny'**
  String get sunny;

  /// No description provided for @clearsky.
  ///
  /// In en, this message translates to:
  /// **'Clear sky'**
  String get clearsky;

  /// No description provided for @mainlyclear.
  ///
  /// In en, this message translates to:
  /// **'Mainly clear'**
  String get mainlyclear;

  /// No description provided for @partlycloudy.
  ///
  /// In en, this message translates to:
  /// **'Partly cloudy'**
  String get partlycloudy;

  /// No description provided for @overcast.
  ///
  /// In en, this message translates to:
  /// **'Overcast'**
  String get overcast;

  /// No description provided for @fog.
  ///
  /// In en, this message translates to:
  /// **'Fog'**
  String get fog;

  /// No description provided for @rimeFog.
  ///
  /// In en, this message translates to:
  /// **'Depositing rime fog'**
  String get rimeFog;

  /// No description provided for @drizzleLight.
  ///
  /// In en, this message translates to:
  /// **'Drizzle Light'**
  String get drizzleLight;

  /// No description provided for @drizzleModerate.
  ///
  /// In en, this message translates to:
  /// **'Drizzle Moderate'**
  String get drizzleModerate;

  /// No description provided for @drizzleDense.
  ///
  /// In en, this message translates to:
  /// **'Drizzle Dense'**
  String get drizzleDense;

  /// No description provided for @freezingDrizzleLight.
  ///
  /// In en, this message translates to:
  /// **'Freezing Drizzle Light'**
  String get freezingDrizzleLight;

  /// No description provided for @freezingDrizzleDense.
  ///
  /// In en, this message translates to:
  /// **'Freezing Drizzle Dense'**
  String get freezingDrizzleDense;

  /// No description provided for @rainSlight.
  ///
  /// In en, this message translates to:
  /// **'Rain Slight'**
  String get rainSlight;

  /// No description provided for @rainModerate.
  ///
  /// In en, this message translates to:
  /// **'Rain Moderate'**
  String get rainModerate;

  /// No description provided for @rainHeavy.
  ///
  /// In en, this message translates to:
  /// **'Rain Heavy'**
  String get rainHeavy;

  /// No description provided for @freezingRainLight.
  ///
  /// In en, this message translates to:
  /// **'Freezing Rain Light'**
  String get freezingRainLight;

  /// No description provided for @freezingRainHeavy.
  ///
  /// In en, this message translates to:
  /// **'Freezing Rain Heavy'**
  String get freezingRainHeavy;

  /// No description provided for @snowFallSlight.
  ///
  /// In en, this message translates to:
  /// **'Snow Fall Slight'**
  String get snowFallSlight;

  /// No description provided for @snowFallModerate.
  ///
  /// In en, this message translates to:
  /// **'Snow Fall Moderate'**
  String get snowFallModerate;

  /// No description provided for @snowFallHeavy.
  ///
  /// In en, this message translates to:
  /// **'Snow Fall Heavy'**
  String get snowFallHeavy;

  /// No description provided for @snowGrains.
  ///
  /// In en, this message translates to:
  /// **'Snow Grains'**
  String get snowGrains;

  /// No description provided for @rainShowersSlight.
  ///
  /// In en, this message translates to:
  /// **'Rain Showers Slight'**
  String get rainShowersSlight;

  /// No description provided for @rainShowersModerate.
  ///
  /// In en, this message translates to:
  /// **'Rain Showers Moderate'**
  String get rainShowersModerate;

  /// No description provided for @rainShowersViolent.
  ///
  /// In en, this message translates to:
  /// **'Rain Showers Violent'**
  String get rainShowersViolent;

  /// No description provided for @snowShowersSlight.
  ///
  /// In en, this message translates to:
  /// **'Snow Showers Slight'**
  String get snowShowersSlight;

  /// No description provided for @snowShowersHeavy.
  ///
  /// In en, this message translates to:
  /// **'Snow Showers Heavy'**
  String get snowShowersHeavy;

  /// No description provided for @thunderstorm.
  ///
  /// In en, this message translates to:
  /// **'Thunderstorm'**
  String get thunderstorm;

  /// No description provided for @thunderstormSlightHail.
  ///
  /// In en, this message translates to:
  /// **'Thunderstorm Slight Hail'**
  String get thunderstormSlightHail;

  /// No description provided for @thunderstormHeavyHail.
  ///
  /// In en, this message translates to:
  /// **'Thunderstorm Heavy Hail'**
  String get thunderstormHeavyHail;

  /// No description provided for @wind.
  ///
  /// In en, this message translates to:
  /// **'Wind'**
  String get wind;

  /// No description provided for @humidity.
  ///
  /// In en, this message translates to:
  /// **'Humidity'**
  String get humidity;

  /// No description provided for @clouds.
  ///
  /// In en, this message translates to:
  /// **'Clouds'**
  String get clouds;

  /// No description provided for @rain.
  ///
  /// In en, this message translates to:
  /// **'Rain'**
  String get rain;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'it'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'it': return AppLocalizationsIt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
