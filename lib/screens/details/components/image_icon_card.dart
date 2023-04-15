import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plat_app_ui_practice/screens/details/components/icon_cart.dart';
import 'package:plat_app_ui_practice/utils/constants.dart';

class ImageAndIconCard extends StatelessWidget {
  const ImageAndIconCard({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.80,
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg")),
                  ),
                  Spacer(),
                  IconCard(icons: "assets/icons/sun.svg"),
                  Spacer(),
                  IconCard(icons: "assets/icons/icon_2.svg"),
                  Spacer(),
                  IconCard(icons: "assets/icons/icon_3.svg"),
                  Spacer(),
                  IconCard(icons: "assets/icons/icon_4.svg"),
                ],
              ),
            )),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(63),
                    bottomLeft: Radius.circular(63),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 60,
                        color: kPrimaryColor.withOpacity(0.29))
                  ],
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}
