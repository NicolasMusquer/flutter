import 'package:flutter/material.dart';
import 'package:yuka/app_icons.dart';
import 'package:yuka/main.dart';
import 'package:yuka/res/app_images.dart';

class FicheScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    var themeData = Theme.of(context);
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            Image(
              image: AssetImage(AppImages.pancake),
              height: 300,
              fit: BoxFit.cover,
            ),
            Positioned(
              child: Header(themeData: themeData),
              left: 0,
              right: 0,
              top: 250,
              bottom: 0,
            ),
          ],
        ),
      ),
    );
  }
}

class Banner extends StatelessWidget {
  const Banner({
    required this.themeData,
    Key? key,
  }) : super(key: key);

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.gray1,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 30.0,
      ),
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 44, child: Nutriscore(themeData: themeData)),
              Container(
                  height: 80, child: VerticalDivider(color: AppColors.gray2)),
              Flexible(
                flex: 56,
                child: NovaGroup(themeData: themeData),
              ),
            ],
          ),
          Container(
              width: MediaQuery.of(context).size.width * 1,
              child: Divider(color: AppColors.gray2)),
          Ecoscore(themeData: themeData),
        ],
      ),
    );
  }
}

class QuantiteVendu extends StatelessWidget {
  const QuantiteVendu({
    required this.themeData,
    Key? key,
  }) : super(key: key);
  final ThemeData themeData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Quantité',
                  style: themeData.textTheme.headline6!
                      .copyWith(fontSize: 20, color: AppColors.blueDark)),
              Text('200g (égoutté 130g)',
                  style: themeData.textTheme.headline6!
                      .copyWith(fontSize: 20, color: AppColors.gray2)),
            ],
          ),
        ),
        Container(
            width: MediaQuery.of(context).size.width * 1,
            child: Divider(color: AppColors.gray2)),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Vendu',
                  style: themeData.textTheme.headline6!
                      .copyWith(fontSize: 20, color: AppColors.blueDark)),
              Text('France',
                  style: themeData.textTheme.headline6!
                      .copyWith(fontSize: 20, color: AppColors.gray2))
            ],
          ),
        ),
      ],
    );
  }
}

class Ecoscore extends StatelessWidget {
  const Ecoscore({
    required this.themeData,
    Key? key,
  }) : super(key: key);
  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'Ecoscore',
              style: themeData.textTheme.headline6!.copyWith(
                  color: AppColors.blueDark, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Icon(AppIcons.ecoscore_d, color: AppColors.nutriscoreD),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Impact environnemental élevé',
                    style: themeData.textTheme.headline6!
                        .copyWith(fontSize: 15, color: AppColors.gray2),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Nutriscore extends StatelessWidget {
  const Nutriscore({
    required this.themeData,
    Key? key,
  }) : super(key: key);

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      child: Image(
        image: AssetImage(AppImages.nutriscoreA),
        width: 150,
      ),
    );
  }
}

class NovaGroup extends StatelessWidget {
  const NovaGroup({
    required this.themeData,
    Key? key,
  }) : super(key: key);
  final ThemeData themeData;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              'Groupe NOVA',
              style: themeData.textTheme.headline6!.copyWith(
                  color: AppColors.blueDark, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            'Produits alimentaires et boissons ultra-transformés',
            style: themeData.textTheme.headline6!
                .copyWith(color: AppColors.gray2, fontSize: 15),
          ),
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
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(16.0),
                topRight: const Radius.circular(16.0))),
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 30.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Petits pois et carottes',
              style: themeData.textTheme.headline5!.copyWith(
                  color: AppColors.blueDark, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Text(
                'Cassegrain',
                style:
                    themeData.textTheme.headline6!.copyWith(color: Colors.grey),
              ),
            ),
            Text(
              'Petits pois et carottes à létuvée avec garniture',
              style: themeData.textTheme.headline6,
            ),
            Banner(themeData: themeData),
            QuantiteVendu(themeData: themeData),
          ],
        ),
      ),
    );
  }
}
