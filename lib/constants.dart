import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Colors
const Color kPrimaryColor = Color(0xffC0392B);

// Personal Informations
const String name = 'La Pyae Oo';
const String shortName = '(La Pyae)';
const int age = 27;
const String phone = '+95 979 586 7186';
const String email = 'lapyaeootharthar@gmail.com';
const String address = 'Yangon, Myanmar';
const String aboutMeHeadLine = 'I’m La Pyae Oo (La Pyae). I’m a flutter developer focused on crafting mobile software and mobile user experience design.';
const String aboutMeDetail = "I graduated with electronic engineering major from WYTU (West Yangon Technological University) which located in Myanmar. I am absolutely positively thrilled to be starting to work in Mobile development!!! I’ve always admired how thoughtful softwares has the power to change our world. Whether it’s through simplifying one interaction or giving users an opportunity to view things through a new lens, I love working on projects that make people happy. At any scale. In the past few years, I’ve found myself in programming fundamentals in both theory and practical learning, language learning, mobile software front-end development, application processing development, language learning, and smart education.";

// Career Title
const List<String> kCareerTitles = [
  "Flutter Developer",
  "UI/UX Enthusiast",
  "App Crafting Enthusiast"
];

//Company Logos and images directory
// const String coverPhoto = 'assets/doodleTransparency.png';
const String coverPhoto2 = 'assets/cover_web.png';
const String universityLogo = 'assets/university.png';
const String bigsoftLogo = 'assets/bigsoft.png';
const String zoteLogo = 'assets/zote.png';
const String googleDevLogo = 'assets/dsc.png';

const String flutterPjLogo = 'assets/projects/flutter.png';
const String bigsoftPjLogo = 'assets/projects/bigsoft_pj.png';
const String zotePjLogo = 'assets/projects/focus_beauty.png';

// Social Media
const kSocialIcons = [
  "https://img.icons8.com/material-rounded/384/ffffff/github.png",
  "https://img.icons8.com/metro/26/undefined/stackoverflow.png",
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
];

//const String githubLink = "https://github.com/LaPyaeOo";
const String githubLink = "https://drive.google.com/file/d/18GkKHEEMKeCbzjdfEZYUZH5xwVFXR10e/view?usp=sharing";
const String stackoverflowLink = "https://stackoverflow.com/users/9019910/leolinux";
const String linkedinLink = "https://www.linkedin.com/in/la-pyae-b438a5199/";
const String facebookLink = "https://www.facebook.com/profile.php?id=100010377570484";
const String kResumeLink = "https://drive.google.com/file/d/18GkKHEEMKeCbzjdfEZYUZH5xwVFXR10e/view?usp=sharing";

const String portfolioLink = "https://github.com/LaPyaeOo/LaPyaeOo-portfolio.github.io";
const kSocialLinks = [
  githubLink,
  stackoverflowLink,
  linkedinLink,
  facebookLink,
];

// URL Launcher
void launchURL(String url) async => await launchUrl(Uri.parse(url));

// Community
final kCommunityLogo = [
  universityLogo,
  bigsoftLogo,
  zoteLogo,
  googleDevLogo
];

final kCommunityLinks = [
  "https://www.facebook.com/wytumyanmar/",
  "https://bigsoft.tech/",
  "https://zotefamily.com/",
  "https://www.coursera.org/account/accomplishments/certificate/ZKFT74B5X74J"
];

// Tools & Tech
final kTools = [
  "Flutter",
  "Dart",
  "Java",
  "HTML",
  "CSS",
  "Bootstrap"
];

// services
final kServicesIcons = [
  "assets/services/app.png",
  "assets/services/ui.png",
  "assets/services/rapid.png",
];

final kServicesTitles = [
  "Mobile App Development",
  "UI/UX Designing",
  "Prototyping",
];

final kServicesDescriptions = [
  "Mobile app development via Flutter\n- Splash Screen\n- Firebase Auth/Cloud\n- REST APIs\n- Maps integration and more...!",
  "Modern UI/UX Designing\n- Mobile designs\n- Interactive UI designs\n- Responsiveness",
  "Prototype via Flutter\n- Working MVP\n- Quick & Working prototype",
];

// projects
final kProjectsBanner = [
  "assets/projects/bloc_bg.png",
  "assets/projects/bigsoft_bg.png",
  "assets/projects/focusBeauty_bg.png",
];

final kProjectsIcons = [
  flutterPjLogo,
  bigsoftPjLogo,
  zotePjLogo,
];

final kProjectsTitles = [
  "Flutter boilerplate",
  "Bigsoft fin-tech",
  "Focus Beauty",
];

final kProjectsDescriptions = [
  "Reactive custom boilerplate to develop flutter applications with smart. Develop with BLOC pattern and most suitable for complex applications. Can check in Git-Hub because of open source!",
  "One of the mobile application of Bigsoft microfinance Technology company. People and company are more efficient for loan and repayment with this application. Can only install on Google Play Store.",
  "Mobile application that made from Zote company for client. For the purpose of selling products, checking customers and agents contributions. This app can also be installed on Google Play Store, because of privacy.",
];

final kProjectsLinks = [
  "https://github.com/LaPyaeOo/srd",
  "https://play.google.com/store/apps/details?id=com.bigsoft.fintechapp",
  "https://play.google.com/store/search?q=focus+beauty+app&c=apps",
];

// Contact
final kContactIcons = [
  Icons.home,
  Icons.phone,
  Icons.mail,
];

final kContactTitles = [
  "Location",
  "Phone",
  "Email",
];

final kContactDetails = [
  address,
  "(+95) 795 876 186",
  "lapyaeootharthar@gmail.com"
];
