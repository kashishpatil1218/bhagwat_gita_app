import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier{
  String selectLanguage = 'sanskrit';

  void  lanuageTranslate(String value)
  {
    selectLanguage =value;
    notifyListeners();
  }
}