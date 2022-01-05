import 'package:flutter/material.dart';
import 'package:play_on_assesment/core/constants/enums/preferences_keys.dart';
import 'package:play_on_assesment/core/init/cache/locale_manager.dart';

class CreateTeamViewController extends ChangeNotifier {
  final LocaleManager localeManager = LocaleManager.instance;

  void setIsNotFirstLogin() {
    localeManager.setBoolValue(PreferencesKeys.IS_LOGIN_FIRST, false);
    localeManager.setIntValue(PreferencesKeys.TEAM_COUNT, 1);
  }
  
}
