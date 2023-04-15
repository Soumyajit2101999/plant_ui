import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plat_app_ui_practice/utils/routes.dart';
import 'package:plat_app_ui_practice/widgets/featured_plants.dart';
import 'package:plat_app_ui_practice/widgets/header_with_searchbox.dart';
import 'package:plat_app_ui_practice/widgets/recomended_plant.dart';
import 'package:plat_app_ui_practice/widgets/title_with_more_btn.dart';
import 'package:plat_app_ui_practice/utils/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            title: "Recomended",
            press: () {},
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(right: 20),
            child: Row(
              children: [
                RecomendedPlantCard(
                  image: "assets/images/image_1.png",
                  title: "SAMANTHA",
                  country: "RUSSIA",
                  price: 440,
                  press: () =>
                      Navigator.pushNamed(context, MyRoutes.detail_screen),
                ),
                RecomendedPlantCard(
                  image: "assets/images/image_2.png",
                  title: "SAMANTHA",
                  country: "INDIA",
                  price: 540,
                  press: () {},
                ),
                RecomendedPlantCard(
                  image: "assets/images/image_3.png",
                  title: "SAMANTHA",
                  country: "AMERICA",
                  price: 640,
                  press: () {},
                ),
              ],
            ),
          ),
          TitleWithMoreButton(title: "Featured Plants", press: () {}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(right: 20),
            child: Row(
              children: [
                FeaturedPlantCard(image: "assets/images/bottom_img_1.png"),
                FeaturedPlantCard(image: "assets/images/bottom_img_2.png"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
