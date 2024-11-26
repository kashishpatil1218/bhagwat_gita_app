import 'package:bhagwat_gita/provider/gita_provider.dart';
import 'package:bhagwat_gita/provider/language_provider.dart';
import 'package:bhagwat_gita/provider/theme_provider.dart';
import 'package:bhagwat_gita/utills/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => LanguageProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => GitaProvider(),
        ),

      ],
      builder: (context, child) => MaterialApp(
        themeMode: Provider.of<ThemeProvider>(context).isDark
            ? ThemeMode.dark
            : ThemeMode.light,
        theme: ThemeData(
            colorScheme: ColorScheme.light(
                primary: Color(0xffF9EEDC),
                surface: Colors.grey.shade900,
                onPrimaryContainer: Colors.brown.shade200,
                onPrimary: Colors.brown.shade900,
                secondary: Colors.black,
                onSecondary: Colors.brown.shade900,
                primaryContainer: Color(0xff774921)
            )
        ),
        darkTheme: ThemeData(
            colorScheme: ColorScheme.dark(
                surface: Colors.grey.shade900,
                primary: Color(0xffF9EEDC),
                onPrimary: Colors.brown.shade900,
                onPrimaryContainer: Colors.brown.shade200,
                secondary: Colors.black,
                onSecondary: Colors.brown.shade900,
                primaryContainer: Color(0xff774921)
            )
        ),
        debugShowCheckedModeBanner: false,
        routes: Routes.routes,
      ),
    );
  }
}
