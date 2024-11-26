

class GitaModal {
  late int chapter;
  late List<Verse> verses;
  late ChapterName chapterName;

  GitaModal({
    required this.chapter,
    required this.verses,
    required this.chapterName,
  });

  factory GitaModal.fromJson(Map<String, dynamic> json) {
    return GitaModal(
      chapter: json['chapter'],
      verses: (json['verse'] as List)
          .map((e) => Verse.fromJson(e))
          .toList(),
      chapterName: ChapterName.fromJson(json['ChapterName']),
    );
  }
}

class ChapterName {
  late String hindi, english, gujarati, sanskrit;

  ChapterName({
    required this.hindi,
    required this.english,
    required this.gujarati,
    required this.sanskrit,
  });

  factory ChapterName.fromJson(Map<String, dynamic> json) {
    return ChapterName(
      hindi: json['hindi'],
      english: json['english'],
      gujarati: json['gujarati'],
      sanskrit: json['sanskrit'],
    );
  }
}

class Verse {
  late int verseNumber;
  late Language language;

  Verse({required this.verseNumber, required this.language});

  factory Verse.fromJson(Map<String, dynamic> json) {
    return Verse(
      verseNumber: json['VerseNumber'],
      language: Language.fromJson(json['Text']),
    );
  }
}

class Language {
  late String sanskrit, hindi, english, gujarati;

  Language({
    required this.sanskrit,
    required this.hindi,
    required this.english,
    required this.gujarati,
  });

  factory Language.fromJson(Map<String, dynamic> json) {
    return Language(
      sanskrit: json['Sanskrit'],
      hindi: json['Hindi'],
      english: json['English'],
      gujarati: json['Gujarati'],
    );
  }
}
