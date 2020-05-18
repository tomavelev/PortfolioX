import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio_x/header.dart';
import 'package:velocity_x/velocity_x.dart';

import 'colors.dart';
import 'data.dart';

class FooterScreen extends StatelessWidget {
  final User user;

  FooterScreen(this.user);
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
          mobile: VStack(
            [
              Constants.gotAProject().text.center.white.xl2.make(),
              10.heightBox,
             Constants.user.email
                  .text
                  .color(Coolors.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolors.accentColor)
                  .p16
                  .rounded
                  .make()
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
          web: HStack(
            [
              Constants.gotAProject().text.center.white.xl2.make(),
              10.widthBox,
              Constants.user.email
                  .text
                  .color(Coolors.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolors.accentColor)
                  .p16
                  .rounded
                  .make(),
            ],
            alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentWidth * 70).scale150().p16(),
        ),
        50.heightBox,
        CustomAppBar(),
        10.heightBox,
    Constants.thanks().richText.semiBold.white.withTextSpanChildren(
            [Constants.thatsAll().textSpan.gray500.make()]).make(),
        10.heightBox,
        SocialAccounts(user),
        30.heightBox,
        [
          Constants.madeInIndia().text.red500.make(),
          10.widthBox,
          Icon(
            AntDesign.heart,
            color: Vx.red500,
            size: 14,
          ), 10.widthBox,Constants.modifiedBy().text.red500.make(),
        ].hStack(crossAlignment: CrossAxisAlignment.center)
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
