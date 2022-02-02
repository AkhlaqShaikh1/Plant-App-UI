import 'package:flutter/material.dart';
import 'package:plantapp_ui/screens/home/constants.dart';

import 'feautured_plants.dart';
import 'header_with_search_bar.dart';
import 'recommended_card.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //width and height of the screen
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBar(size: size),
          TitleWithMoreBtn(
            title: "Recommended",
            press: () {},
          ),
          const RecommendedPlants(),
          TitleWithMoreBtn(
            title: "Feautered Plants",
            press: () {},
          ),
          const FeauturedPlants(),
          const SizedBox(height: kDefaultPadding)
        ],
      ),
    );
  }
}
