import 'package:flutter/material.dart';
import 'package:portfolio_x/data.dart';
import 'package:velocity_x/velocity_x.dart';

class MiddleScreen extends StatelessWidget {
  final User user;

  MiddleScreen(this.user);

  @override
  Widget build(BuildContext context) {
    List<Widget> projects = [];
    user.projects.forEach((element) {
      projects.add(ProjectWidget(title: element));
    });
    return Material(
      color: Vx.purple700,
      child: Flex(direction: context.isMobile ? Axis.vertical : Axis.horizontal, children: [
        Constants.creativeWorks().richText.withTextSpanChildren([Constants.projects().textSpan.yellow400.make()]).xl4.white.make(),
        20.widthBox,
        Expanded(
            child: VxSwiper(
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
          items: projects,
          height: 170,
          viewportFraction: context.isMobile ? 0.75 : 0.4,
          autoPlay: true,
          autoPlayAnimationDuration: 1.seconds,
        ))
      ]).p64().h(context.isMobile ? 500 : 300),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String title;

  const ProjectWidget({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return title.text.bold.white.xl.wide.center.make().box.p8.roundedLg.neumorphic(color: Vx.purple700, elevation: 5, curve: VxCurve.flat).alignCenter.square(200).make().p16();
  }
}
