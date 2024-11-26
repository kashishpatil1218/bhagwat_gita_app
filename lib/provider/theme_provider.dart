import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ThemeProvider extends ChangeNotifier{
  bool isDark= false;
  void ChangeTheme()
  {
     isDark!=isDark;
     notifyListeners();
  }
}