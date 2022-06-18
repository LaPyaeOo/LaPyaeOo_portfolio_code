import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:developer_portfolio/constants.dart';
import 'package:developer_portfolio/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class SocialMediaIconBtn extends StatelessWidget {
  final String? icon;
  final String? socialLink;
  final double? height;
  final double? horizontalPadding;

  const SocialMediaIconBtn({
    Key? key,
    this.icon,
    this.socialLink,
    this.height,
    this.horizontalPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding!),
      child: IconButton(
        // icon: Image.network(
        //   icon!,
        //   color: themeProvider.lightTheme ? Colors.black : Colors.white,
        // ),
        icon: CachedNetworkImage(
          placeholder: (BuildContext context, pString) {
            return Icon(
              Icons.search,
              color: themeProvider.lightTheme ? Colors.black.withOpacity(0.3) : Colors.white.withOpacity(0.3),
              size: height,
            );
          },
          imageUrl: icon!,
          imageBuilder: (BuildContext context, imageProvider) => Image(
              image: imageProvider,
              color: themeProvider.lightTheme ? Colors.black : Colors.white,
              height: height),
          errorWidget: (context, url, error) => Icon(
            Icons.wifi_off,
            color: themeProvider.lightTheme ? Colors.black : Colors.white,
            size: height,
          ),
        ),
        iconSize: height,
        onPressed: () => launchURL(
          socialLink!,
        ),
        hoverColor: kPrimaryColor,
      ),
    );
  }
}
