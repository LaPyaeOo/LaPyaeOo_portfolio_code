import 'package:flutter/material.dart';
import 'package:developer_portfolio/sections/home/home_desktop.dart';
import 'package:developer_portfolio/sections/home/home_mobile.dart';
import 'package:developer_portfolio/sections/home/home_tab.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const HomeMobile(),
      tablet: const HomeTab(),
      desktop: const HomeDesktop(),
    );
  }
}


// CachedNetworkImage(
// placeholder: (BuildContext context, string) {
// return Container(
// color: mainColor,
// child: Center(
// child: Image.asset(
// "assets/image_search.png",
// fit: BoxFit.cover,
// ),
// ),
// );
// },
// imageUrl: agentsList[index].profilePicture,
// imageBuilder: (context, imageProvider) => Ink.image(
// image: imageProvider,
// fit: BoxFit.cover,
// ),
// errorWidget: (context, url, error) => Ink(
// color: mainColor,
// child: Center(
// child: Icon(
// Icons.face,
// size: mediaQuery.size.width / 4,
// color: Colors.black.withOpacity(0.5),
// ),
// ),
// ),
// ),