import 'package:flutter/material.dart';
import 'package:plantapp_ui/screens/home/constants.dart';

import 'header_with_search_bar.dart';
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
        Container(
          margin: const EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding / 2,
            bottom: kDefaultPadding * 2.5,
          ),
          width: size.width * 0.4,
          child: Column(
            children: [
              Image.asset("assets/logos/image_1.png"),
              Container(
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
                            text: "Samantha\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button,
                          ),
                          TextSpan(
                            text: "Russia".toUpperCase(),
                            style: TextStyle(
                              color: kPrimaryColor.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "\$440",
                      style: Theme.of(context).textTheme.button?.copyWith(
                            color: kPrimaryColor,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
