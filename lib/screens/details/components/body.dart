import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plat_app_ui_practice/screens/details/components/icon_cart.dart';
import 'package:plat_app_ui_practice/screens/details/components/image_icon_card.dart';
import 'package:plat_app_ui_practice/screens/details/components/title_and_price.dart';
import 'package:plat_app_ui_practice/utils/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIconCard(image: "assets/images/img.png"),
          TitleAndPrice(
            title: "Angelica\n",
            country: "Russia",
            price: "\$440",
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                      ),
                      backgroundColor: kPrimaryColor),
                ),
              ),
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Description",
                    style: TextStyle(color: Colors.black),
                  ),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
