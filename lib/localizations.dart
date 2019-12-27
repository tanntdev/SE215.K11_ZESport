import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class EsportsLocalizations {
  EsportsLocalizations(this.locale);

  static const _EsportsLocalizationsDelegate delegate =
      _EsportsLocalizationsDelegate();

  final Locale locale;

  static EsportsLocalizations of(BuildContext context) {
    return Localizations.of<EsportsLocalizations>(
        context, EsportsLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    "en": {
      // Matches
      "matches": "Trận đấu",
      "nomatches": "Không có trận đấu",
      "refresh" : "Làm mới",
      "live": "Trực tiếp",
      "today": "Hôm nay",
      "game": "Game",

      // Tournaments
      "tournaments": "Giải đấu",
      "notournament": "No tournaments",
      "ongoing":  "Đang diễn ra",
      "upcoming": "Sắp tới",
    },
  };

  String get(String key) {
    return _localizedValues[locale.languageCode][key];
  }
}

class _EsportsLocalizationsDelegate
    extends LocalizationsDelegate<EsportsLocalizations> {
  const _EsportsLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ["en", "fr"].contains(locale.languageCode);

  @override
  Future<EsportsLocalizations> load(Locale locale) {
    return SynchronousFuture<EsportsLocalizations>(
        EsportsLocalizations(locale));
  }

  @override
  bool shouldReload(_EsportsLocalizationsDelegate old) => false;
}
