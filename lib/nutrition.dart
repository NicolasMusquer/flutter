import 'package:flutter/material.dart';
import 'package:yuka/main.dart';
import 'package:yuka/res/app_images.dart';

class Nutrition extends StatelessWidget {
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
          Nutritionnel(themeData: themeData)
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

class Nutritionnel extends StatelessWidget {
  const Nutritionnel({
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
        width: MediaQuery.of(context).size.width * 1,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                'Repéres nutritionnels pour 100g',
                style:
                    themeData.textTheme.headline6!.copyWith(color: Colors.grey),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Matières grasses / Lipides',
                    style: themeData.textTheme.headline6!
                        .copyWith(color: AppColors.blueDark),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('0.8g',
                          style: themeData.textTheme.headline6!.copyWith(
                              color: AppColors.ecoScoreA, fontSize: 15)),
                      Text('Faible quantité',
                          style: themeData.textTheme.headline6!.copyWith(
                              color: AppColors.ecoScoreA, fontSize: 15))
                    ],
                  ),
                ],
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.95,
                child: Divider(color: AppColors.gray2)),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Acides gras saturés',
                    style: themeData.textTheme.headline6!
                        .copyWith(color: AppColors.blueDark),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('0.1g',
                          style: themeData.textTheme.headline6!.copyWith(
                              color: AppColors.ecoScoreA, fontSize: 15)),
                      Text('Faible quantité',
                          style: themeData.textTheme.headline6!.copyWith(
                              color: AppColors.ecoScoreA, fontSize: 15))
                    ],
                  ),
                ],
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.95,
                child: Divider(color: AppColors.gray2)),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sucres',
                    style: themeData.textTheme.headline6!
                        .copyWith(color: AppColors.blueDark),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('5.2g',
                          style: themeData.textTheme.headline6!.copyWith(
                              color: AppColors.ecoScoreD, fontSize: 15)),
                      Text('Quantité modérée',
                          style: themeData.textTheme.headline6!.copyWith(
                              color: AppColors.ecoScoreD, fontSize: 15))
                    ],
                  ),
                ],
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.95,
                child: Divider(color: AppColors.gray2)),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sel',
                    style: themeData.textTheme.headline6!
                        .copyWith(color: AppColors.blueDark),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('0.75g',
                          style: themeData.textTheme.headline6!.copyWith(
                              color: AppColors.ecoScoreE, fontSize: 15)),
                      Text('Quantité élevée',
                          style: themeData.textTheme.headline6!.copyWith(
                              color: AppColors.ecoScoreE, fontSize: 15))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
