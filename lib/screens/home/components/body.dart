import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plat_app_ui_practice/screens/home/components/header_with_searchbox.dart';
import 'package:plat_app_ui_practice/screens/home/components/title_with_more_btn.dart';
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
            title: "More",
            press: () {},
          )
        ],
      ),
    );
  }
}
