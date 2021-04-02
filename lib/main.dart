import 'package:flutter/material.dart';
import 'package:yuka/app_icons.dart';

import 'caracteristiques.dart';
import 'empty_screen.dart';
import 'fiche_screen.dart';
import 'nutrition.dart';

class AppColors {
  static const Color blue = Color(0xFF080040);
  static const Color blueDark = Color(0xFF050027);
  static const Color yellow = Color(0xFFFBAF02);
  static const Color blueLight = Color(0xFF41C7DF);
  static const Color gray1 = Color(0xFFF6F6F8);
  static const Color gray2 = Color(0xFFB8BBC6);
  static const Color gray3 = Color(0xFF6A6A6A);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color nutrientLevelLow = Color(0xFF63993F);
  static const Color nutrientKevelModerate = Color(0xFF997B3F);
  static const Color nutrientLevelHigh = Color(0xFF993F3F);
  static const Color nutriscoreA = Color(0xFF008b4c);
  static const Color nutriscoreB = Color(0xFF80c142);
  static const Color nutriscoreC = Color(0xFFfeca0b);
  static const Color nutriscoreD = Color(0xFFf58220);
  static const Color nutriscoreE = Color(0xFFef3e22);
  static const Color ecoScoreA = Color(0xFF1E8F4E);
  static const Color ecoScoreB = Color(0xFF2ECC71);
  static const Color ecoScoreC = Color(0xFFFFC900);
  static const Color ecoScoreD = Color(0xFFEF7E1A);
  static const Color ecoScoreE = Color(0xFFE62D19);
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: AppColors.blue,
          primaryColorDark: AppColors.blueDark,
          accentColor: AppColors.yellow,
          appBarTheme: AppBarTheme(
              elevation: 0.0,
              backgroundColor: AppColors.white,
              titleTextStyle: TextStyle(color: AppColors.blue),
              actionsIconTheme: IconThemeData(color: AppColors.blue)),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: AppColors.blue,
              unselectedItemColor: AppColors.gray2)),
      home: DetailsScreen(),
    );
  }
}

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  ProductDetailsCurrentTab currentTab = ProductDetailsCurrentTab.summary;
  int position = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Offstage(
            offstage: currentTab != ProductDetailsCurrentTab.summary,
            child: FicheScreen(),
          ),
          Offstage(
            offstage: currentTab != ProductDetailsCurrentTab.info,
            child: Caracteristique(),
          ),
          Offstage(
            offstage: currentTab != ProductDetailsCurrentTab.nutrition,
            child: Nutrition(),
          ),
          Offstage(
            offstage: currentTab != ProductDetailsCurrentTab.nutritionalValues,
            child: EmptyListScreen(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(AppIcons.tab_barcode), label: 'Fiche'),
          BottomNavigationBarItem(
              icon: Icon(AppIcons.tab_fridge), label: 'Caractéristiques'),
          BottomNavigationBarItem(
              icon: Icon(AppIcons.tab_nutrition), label: 'Nutrition'),
          BottomNavigationBarItem(
              icon: Icon(AppIcons.tab_array), label: 'Tableau'),
        ],
        currentIndex: position,
        onTap: (int position) {
          setState(() {
            currentTab = ProductDetailsCurrentTab.values.elementAt(position);
            this.position = position;
          });
        },
      ),
    );
  }

  Widget _body() {
    if (currentTab == ProductDetailsCurrentTab.summary) return FicheScreen();
    if (currentTab == ProductDetailsCurrentTab.info) return Caracteristique();
    if (currentTab == ProductDetailsCurrentTab.nutrition) return Nutrition();
    if (currentTab == ProductDetailsCurrentTab.nutritionalValues)
      return EmptyListScreen();

    throw Exception('');
  }
}

enum ProductDetailsCurrentTab { summary, info, nutrition, nutritionalValues }

class Tableau extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Tableau',
    );
  }
}
