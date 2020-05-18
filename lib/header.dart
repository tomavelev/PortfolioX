import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio_x/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import 'data.dart';

class HeaderScreen extends StatelessWidget {
  final User user;

  HeaderScreen(this.user);

  @override
  Widget build(BuildContext context) {
    final nameWidget = user.name.replaceAll(" ", "\n").text.white.xl6.lineHeight(1).size(context.isMobile ? 15 : 20).bold.make().shimmer();
    return SafeArea(
      child: VxBox(
          child: VStack([
        ZStack(
          [
            PictureWidget(user),
            Row(
              children: [
                VStack([
                  if (context.isMobile) 50.heightBox else 10.heightBox,
                  CustomAppBar().shimmer(primaryColor: Coolors.accentColor),
                  30.heightBox,
                  nameWidget,
                  20.heightBox,
                  VxBox().color(Coolors.accentColor).size(60, 10).make().px4().shimmer(primaryColor: Coolors.accentColor),
                  30.heightBox,
                  SocialAccounts(user),
                ]).pSymmetric(
                  h: context.percentWidth * 10,
                  v: 32,
                ),
                Expanded(
                  child: VxResponsive(
                    medium: IntroductionWidget(this.user).pOnly(left: 120).h(context.percentHeight * 60),
                    large: IntroductionWidget(this.user).pOnly(left: 120).h(context.percentHeight * 60),
                    fallback: const Offstage(),
                  ),
                )
              ],
            ).w(context.screenWidth)
          ],
        )
      ])).size(context.screenWidth, context.percentHeight * 60).color(Coolors.secondaryColor).make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  final User user;

  const IntroductionWidget(
    this.user, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          Constants.intro().text.gray500.widest.sm.make(),
          10.heightBox,
          Constants.introdata().text.white.xl3.maxLines(5).make().w(context.isMobile ? context.screenWidth : context.percentWidth * 40),
          20.heightBox,
        ].vStack(),
        RaisedButton(
          onPressed: () {
            launch(user.url);
          },
          hoverColor: Vx.purple700,
          shape: Vx.roundedSm,
          color: Coolors.accentColor,
          textColor: Coolors.primaryColor,
          child: (Constants.visit() + user.url).text.make(),
        ).h(50)
      ],
      // crossAlignment: CrossAxisAlignment.center,
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: Coolors.accentColor,
    );
  }
}

class PictureWidget extends StatelessWidget {
  final User user;

  const PictureWidget(
    this.user, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      origin: Offset(context.percentWidth * 2, 0),
      transform: Matrix4.rotationY(pi),
      child: Image.network(
        user.picture,
        fit: BoxFit.cover,
        height: context.percentHeight * 60,
      ),
    );
  }
}

class SocialAccounts extends StatelessWidget {
  final User user;

  SocialAccounts(this.user);

  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        AntDesign.twitter,
        color: Colors.white,
      ).mdClick(() {
        launch(user.twitter);
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.instagram,
        color: Colors.white,
      ).mdClick(() {
        launch(user.instagram);
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.youtube,
        color: Colors.white,
      ).mdClick(() {
        launch(user.youtube);
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.github,
        color: Colors.white,
      ).mdClick(() {
        launch(user.github);
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.facebook_square,
        color: Colors.white,
      ).mdClick(() {
        launch(user.facebook);
      }).make()
    ].hStack();
  }
}
