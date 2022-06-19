import 'package:flutter/foundation.dart';
import 'package:developer_portfolio/provider/theme_provider.dart';
import 'package:developer_portfolio/widget/custom_button.dart';
import 'package:developer_portfolio/widget/custom_text_heading.dart';
import 'package:provider/provider.dart';
import 'package:universal_html/html.dart' as html;

import 'package:flutter/material.dart';
import 'package:developer_portfolio/constants.dart';
import 'package:developer_portfolio/widget/about_me_data.dart';
import 'package:developer_portfolio/widget/community_button.dart';
import 'package:developer_portfolio/widget/tech_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMobile extends StatelessWidget {
  final _communityLogoHeight = [65.0, 70.0, 30.0, 35.0];

  AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
      ),
      color: themeProvider.lightTheme ? Colors.white : Colors.black,
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nAbout Me"),
          const CustomSectionSubHeading(text: "Get to know me :)"),
          CircleAvatar(
            radius: height * 0.15,
            backgroundImage: const AssetImage(
              'assets/profile_pic.png',
              // height: height * 0.27,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(height * 0.27),
                border: Border.all(color: kPrimaryColor),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Who am I?",
              style: GoogleFonts.montserrat(
                color: kPrimaryColor,
                fontSize: height * 0.025,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.028,
          ),
          Text(
            aboutMeHeadLine,
            style: GoogleFonts.montserrat(
              fontSize: height * 0.022,
              fontWeight: FontWeight.w400,
              color: themeProvider.lightTheme ? Colors.black : Colors.white,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            aboutMeDetail,
            style: GoogleFonts.montserrat(
              fontSize: height * 0.018,
              color: Colors.grey[500],
              height: 1.5,
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey[900]!,
                  width: 1.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Technologies I have worked with:",
              style: GoogleFonts.montserrat(
                  color: kPrimaryColor, fontSize: height * 0.015),
            ),
          ),
          Row(
            children: [
              for (int i = 0; i < 3; i++)
                ToolTechWidget(
                  techName: kTools[i],
                ),
            ],
          ),
          Row(
            children: [
              for (int i = 3; i < 6; i++)
                ToolTechWidget(
                  techName: kTools[i],
                ),
            ],
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey[900]!,
                  width: 1.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          const AboutMeData(
            data: "Name",
            information: name,
            alignment: Alignment.centerLeft,
          ),
          const AboutMeData(
            data: "Email",
            information: email,
            alignment: Alignment.centerLeft,
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedCustomBtn(
                      btnText: "Resume",
                      onPressed: () {
                        // kIsWeb
                        //     ? html.window.open(resumeLink, "pdf")
                        //     :
                        launchURL(kResumeLink);
                      }),
                ),
                Container(
                  width: width * 0.2,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey[900]!,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: kCommunityLogo
                    .asMap()
                    .entries
                    .map(
                      (e) => CommunityIconBtn(
                        icon: kCommunityLogo[e.key],
                        link: kCommunityLinks[e.key],
                        height: _communityLogoHeight[e.key],
                      ),
                    )
                    .toList()),
          ),
        ],
      ),
    );
  }
}
