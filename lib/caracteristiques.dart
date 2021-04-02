import 'package:flutter/material.dart';
import 'package:yuka/main.dart';
import 'package:yuka/res/app_images.dart';

class Caracteristique extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var themeData = Theme.of(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Image(
            image: AssetImage(AppImages.pancake),
            height: 300,
            fit: BoxFit.cover,
          ),
          Header(themeData: themeData),
          IngredientTitle(themeData: themeData),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    required this.themeData,
    Key? key,
  }) : super(key: key);
  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(16.0),
              topRight: const Radius.circular(16.0))),
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 30.0,
      ),
      width: MediaQuery.of(context).size.width * 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Petits pois et carottes',
            style: themeData.textTheme.headline5!.copyWith(
                color: AppColors.blueDark, fontWeight: FontWeight.bold),
          ),
          Text(
            'Cassegrain',
            style: themeData.textTheme.headline6!.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class IngredientTitle extends StatelessWidget {
  const IngredientTitle({
    required this.themeData,
    Key? key,
  }) : super(key: key);
  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.gray1,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 30.0,
            ),
            alignment: AlignmentDirectional.center,
            width: MediaQuery.of(context).size.width * 1,
            child: Text('Ingredients',
                style: themeData.textTheme.headline6!.copyWith(
                    color: AppColors.blueDark,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 40.0,
            ),
            margin: const EdgeInsets.only(top: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Légumes'),
                  Text('petits poids 41%'),
                ]),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.90,
              child: Divider(color: AppColors.gray2)),
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 40.0,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Eau'),
                  Text(''),
                ]),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Divider(color: AppColors.gray2)),
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 40.0,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sucre'),
                  Text(''),
                ]),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Divider(color: AppColors.gray2)),
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 40.0,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Garniture (2.5%)'),
                  Text('salade, oignon grelot'),
                ]),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Divider(color: AppColors.gray2)),
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 40.0,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sel'),
                  Text(''),
                ]),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Divider(color: AppColors.gray2)),
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 40.0,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Aromes naturels'),
                  Text(''),
                ]),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.gray1,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 30.0,
            ),
            margin: const EdgeInsets.only(top: 40),
            alignment: AlignmentDirectional.center,
            width: MediaQuery.of(context).size.width * 1,
            child: Text('Substances allergènes',
                style: themeData.textTheme.headline6!.copyWith(
                    color: AppColors.blueDark,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 40.0,
            ),
            margin: const EdgeInsets.only(top: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Aucune'),
                  Text(''),
                ]),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.gray1,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 30.0,
            ),
            alignment: AlignmentDirectional.center,
            width: MediaQuery.of(context).size.width * 1,
            child: Text('Additifs',
                style: themeData.textTheme.headline6!.copyWith(
                    color: AppColors.blueDark,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            margin: const EdgeInsets.only(top: 40),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 40.0,
            ),
            margin: const EdgeInsets.only(top: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Aucune'),
                  Text(''),
                ]),
          ),
        ],
      ),
    );
  }
}
