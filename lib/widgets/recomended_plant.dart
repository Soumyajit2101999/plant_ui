import 'package:flutter/material.dart';
import 'package:plat_app_ui_practice/utils/constants.dart';
import 'package:plat_app_ui_practice/utils/routes.dart';

class RecomendedPlantCard extends StatelessWidget {
  const RecomendedPlantCard({
    Key? key,
    this.image = "",
    this.title = "",
    this.country = "",
    this.price = 0,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, MyRoutes.detail_screen),
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: Theme.of(context).textTheme.button,
                        ),
                        Text(
                          "\$$price",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: kPrimaryColor),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      country,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor.withOpacity(0.5)),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
