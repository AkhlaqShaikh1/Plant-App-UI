import 'package:flutter/material.dart';

import '../constants.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedPlantCard(
            title: "Samantha",
            country: 'Russia',
            image: "assets/logos/image_1.png",
            price: 440,
            press: () {},
          ),
          RecommendedPlantCard(
            title: "Angelica",
            country: 'Russia',
            image: "assets/logos/image_2.png",
            price: 400,
            press: () {},
          ),
          RecommendedPlantCard(
            title: "Oliver",
            country: 'Russia',
            image: "assets/logos/image_3.png",
            price: 340,
            press: () {},
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class RecommendedPlantCard extends StatelessWidget {
  const RecommendedPlantCard({
    Key? key,
    required this.title,
    required this.country,
    required this.image,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String title, country, image;
  final int price;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context).textTheme.button?.copyWith(
                          color: kPrimaryColor,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
