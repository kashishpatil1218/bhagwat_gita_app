import 'dart:convert';

import 'package:bhagwat_gita/modal/gita_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class GitaProvider extends ChangeNotifier {
  List<GitaProvider> gitaModalList = [];

  Future<void> jsonParsing() async {
    String json = await rootBundle.loadString('asset/json/gita_json.dart');
    List response = jsonDecode(json);
    gitaModalList = response
        .map(
          (e) => GitaModal.fromJson(e),
    ).cast<GitaProvider>()
        .toList();
    notifyListeners();
  }

  GitaProvider() {
    jsonParsing();
  }
}
