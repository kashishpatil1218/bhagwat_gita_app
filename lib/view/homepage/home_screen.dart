import 'package:bhagwat_gita/provider/gita_provider.dart';
import 'package:bhagwat_gita/provider/language_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../provider/theme_provider.dart';
import '../../utills/global.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});


  @override
  Widget build(BuildContext context) {
    GitaProvider gitaProvider = Provider.of<GitaProvider>(context, listen: true);
    ThemeProvider themeProviderTrue =
    Provider.of<ThemeProvider>(context, listen: true);
    ThemeProvider themeProviderFalse =
    Provider.of<ThemeProvider>(context, listen: false);

    LanguageProvider languageProviderTrue =
    Provider.of<LanguageProvider>(context, listen: true);
    LanguageProvider languageProviderFalse =
    Provider.of<LanguageProvider>(context, listen: false);


    return Scaffold(
      backgroundColor: (themeProviderTrue.isDark)
          ? Theme
          .of(context)
          .colorScheme
          .secondary
          : Theme
          .of(context)
          .colorScheme
          .primary,
      appBar: AppBar(
        scrolledUnderElevation: 0.1,
        backgroundColor: (themeProviderTrue.isDark)
            ? Theme
            .of(context)
            .colorScheme
            .secondary
            : Theme
            .of(context)
            .colorScheme
            .primary,
        actions: [
          PopupMenuButton<String>(
            color: (themeProviderTrue.isDark)
                ? Theme
                .of(context)
                .colorScheme
                .primary
                : Theme
                .of(context)
                .colorScheme
                .secondary,
            icon: Icon(Icons.more_vert,
                color: (themeProviderTrue.isDark)
                    ? Theme
                    .of(context)
                    .colorScheme
                    .primary
                    : Theme
                    .of(context)
                    .colorScheme
                    .onPrimary),
            onSelected: (String result) {
              switch (result) {
                case 'Languages':
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          shadowColor: Colors.white,
                          title: Icon(Icons.language, size: 40),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Choose Your comfort lanhuage',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15),
                              ),
                              ListTile(
                                title: Text('Sanskrit'),
                                leading: Radio(
                                  activeColor: (themeProviderTrue.isDark)
                                      ? Theme
                                      .of(context)
                                      .colorScheme
                                      .primary
                                      : Theme
                                      .of(context)
                                      .colorScheme
                                      .onPrimary,
                                  value: 'Sanskrit',
                                  groupValue: Provider
                                      .of<LanguageProvider>(
                                      context,
                                      listen: true)
                                      .selectLanguage,
                                  onChanged: (String? value) {
                                    Provider.of<LanguageProvider>(context,
                                        listen: false)
                                        .lanuageTranslate(value!);
                                  },
                                ),
                              ),
                              ListTile(
                                title: Text('Hindi'),
                                leading: Radio(
                                  activeColor: (themeProviderTrue.isDark)
                                      ? Theme
                                      .of(context)
                                      .colorScheme
                                      .primary
                                      : Theme
                                      .of(context)
                                      .colorScheme
                                      .onPrimary,
                                  value: 'Hindi',
                                  groupValue: Provider
                                      .of<LanguageProvider>(
                                      context,
                                      listen: true)
                                      .selectLanguage,
                                  onChanged: (String? value) {
                                    Provider.of<LanguageProvider>(context,
                                        listen: false)
                                        .lanuageTranslate(value!);
                                  },
                                ),
                              ),
                              ListTile(
                                title: Text('English'),
                                leading: Radio(
                                  activeColor: (themeProviderTrue.isDark)
                                      ? Theme
                                      .of(context)
                                      .colorScheme
                                      .primary
                                      : Theme
                                      .of(context)
                                      .colorScheme
                                      .onPrimary,
                                  value: 'English',
                                  groupValue: Provider
                                      .of<LanguageProvider>(
                                      context,
                                      listen: true)
                                      .selectLanguage,
                                  onChanged: (String? value) {
                                    Provider.of<LanguageProvider>(context,
                                        listen: false)
                                        .lanuageTranslate(value!);
                                  },
                                ),
                              ),
                              ListTile(
                                title: Text('Gujarati'),
                                leading: Radio(
                                  activeColor: (themeProviderTrue.isDark)
                                      ? Theme
                                      .of(context)
                                      .colorScheme
                                      .primary
                                      : Theme
                                      .of(context)
                                      .colorScheme
                                      .onPrimary,
                                  value: 'Gujrati',
                                  groupValue: Provider
                                      .of<LanguageProvider>(
                                      context,
                                      listen: true)
                                      .selectLanguage,
                                  onChanged: (String? value) {
                                    Provider.of<LanguageProvider>(context,
                                        listen: false)
                                        .lanuageTranslate(value!);
                                  },
                                ),
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: (themeProviderTrue.isDark)
                                        ? Theme
                                        .of(context)
                                        .colorScheme
                                        .primary
                                        : Theme
                                        .of(context)
                                        .colorScheme
                                        .onPrimary,
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    "Apply Language!",
                                    style: TextStyle(
                                        color: (themeProviderTrue.isDark)
                                            ? Theme
                                            .of(context)
                                            .colorScheme
                                            .onPrimary
                                            : Theme
                                            .of(context)
                                            .colorScheme
                                            .primary),
                                  ))
                            ],
                          ),
                        );
                      });
                  break;
                case 'settings':
                  Navigator.of(context).pushNamed('/setting');
              }
            },
            itemBuilder: (BuildContext context) =>
            <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'Languages',
                child: ListTile(
                  leading: Icon(Icons.language,
                      color: (themeProviderTrue.isDark)
                          ? Theme
                          .of(context)
                          .colorScheme
                          .onPrimary
                          : Theme
                          .of(context)
                          .colorScheme
                          .primary),
                  title: Text(
                    'Languages',
                    style: TextStyle(
                        color: (themeProviderTrue.isDark)
                            ? Theme
                            .of(context)
                            .colorScheme
                            .onPrimary
                            : Theme
                            .of(context)
                            .colorScheme
                            .primary),
                  ),
                ),
              ),
              PopupMenuItem<String>(
                value: 'Settings',
                child: ListTile(
                  leading: Icon(Icons.settings,
                      color: (themeProviderTrue.isDark)
                          ? Theme
                          .of(context)
                          .colorScheme
                          .onPrimary
                          : Theme
                          .of(context)
                          .colorScheme
                          .primary),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                        color: (themeProviderTrue.isDark)
                            ? Theme
                            .of(context)
                            .colorScheme
                            .onPrimary
                            : Theme
                            .of(context)
                            .colorScheme
                            .primary),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 500,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 280),
                    child: Image.asset('asset/img/spla3.png'),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        (languageProviderTrue.selectLanguage == 'sanskrit')
                            ? translate[0]
                            : (languageProviderTrue.selectLanguage == 'Hindi')
                            ? translate[1]
                            : (languageProviderTrue.selectLanguage ==
                            'English')
                            ? translate[2]
                            : translate[3],
                        style: GoogleFonts.arsenal(
                          color: (themeProviderTrue.isDark)
                              ? Theme
                              .of(context)
                              .colorScheme
                              .primary
                              : Theme
                              .of(context)
                              .colorScheme
                              .onPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: themeProviderTrue.isDark
                        ? Theme
                        .of(context)
                        .colorScheme
                        .surface
                        : Theme
                        .of(context)
                        .colorScheme
                        .onSecondary,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: ListView.builder(itemCount: gitaProvider
                        .gitaModalList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () {
                              gitaProvider.selectedIndex = index;
                              //verses = BhagvatGitaProvider().gitaModalList[index].verses;
                              Navigator.of(context).pushNamed(
                                  '/mainpage'); //shlok
                            },
                            child: buildColumn(themeProviderTrue, context,
                                languageProviderTrue, index,
                                GitaProvider()));
                      },),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Column buildColumn(ThemeProvider themeProviderTrue, BuildContext context,
    LanguageProvider languageProviderTrue, int index,
    GitaProvider gitaProvider) {
  return Column(
    children: [
      ListTile(
        leading: Icon(Icons.games, color: themeProviderTrue.isDark
            ? Theme
            .of(context)
            .colorScheme
            .primary
            : Theme
            .of(context)
            .colorScheme
            .primary,),
        title: Text(
          ' ${ (languageProviderTrue.selectLanguage == 'Sanskrit')
              ? 'अध्याय ${index + 1} :- ' +
              gitaProvider.gitaModalList[index].chapterName.sanskrit
              : (languageProviderTrue.selectLanguage == 'Hindi')
              ? 'अध्याय ${index + 1} :- ' +
              gitaProvider.gitaModalList[index].chapterName.hindi
              : (languageProviderTrue.selectLanguage == 'English')
              ? 'Adhyay ${index + 1} :- ' + gitaProvider
              .gitaModalList[index].chapterName.english
              : 'અધ્યાય ${index + 1} :- ' + gitaProvider
              .gitaModalList[index].chapterName.gujarati}',
//change fonts
          style: GoogleFonts.arsenal(
            color: themeProviderTrue.isDark
                ? Theme
                .of(context)
                .colorScheme
                .primary
                : Theme
                .of(context)
                .colorScheme
                .primary,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      ),
      const Divider(
        color: Colors.grey,
        thickness: 1,
      ),
    ],
  );
}


}
