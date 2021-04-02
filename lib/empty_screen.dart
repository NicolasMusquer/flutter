import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yuka/app_icons.dart';
import 'package:yuka/main.dart';
import 'package:yuka/res/app_vectorial_images.dart';

import 'fiche_screen.dart';

class EmptyListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mes scans',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        actions: [
          IconButton(
            icon: FittedBox(
              child: Icon(
                AppIcons.barcode,
                size: 18.0,
              ),
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => FicheScreen()));
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(AppVectorialImages.illEmpty),
            SizedBox(height: screenHeight * 0.1),
            FractionallySizedBox(
              widthFactor: 0.3,
              child: Text(
                'Vous n\'avez pas encore scanné de produit',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.blue,
                  height: 1.7,
                  fontSize: 17.0,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.1),
            TextButton(
              onPressed: () {
                print('Clic');
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => FicheScreen()));
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Commencer'.toUpperCase(),
                  ),
                  const SizedBox(width: 20.0),
                  Icon(Icons.arrow_right_alt),
                ],
              ),
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  vertical: 18.0,
                  horizontal: 25.0,
                ),
                primary: AppColors.blue,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(22.0),
                  ),
                ),
                backgroundColor: AppColors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
