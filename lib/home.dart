import 'package:flutter/material.dart';
import 'package:portfolio_x/colors.dart';
import 'package:portfolio_x/data.dart';
import 'package:portfolio_x/footer.dart';
import 'package:portfolio_x/middle.dart';
import 'package:velocity_x/velocity_x.dart';

import 'header.dart';

class HomeScreen extends StatelessWidget {
  final User user;

  HomeScreen(this.user);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolors.primaryColor,
      child: VStack([
        HeaderScreen(user),
        context.isMobile ? IntroductionWidget(user).p16() : Container(),
        MiddleScreen(user),
        FooterScreen(user),
      ]).scrollVertical(),
    );
  }
}
