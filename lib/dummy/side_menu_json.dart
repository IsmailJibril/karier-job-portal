
import 'package:flutter/material.dart';
import 'package:karier_job_portal/pages/karier_home_page.dart';
import 'package:karier_job_portal/pages/notifications_page.dart';
import 'package:karier_job_portal/pages/profile_page.dart';
import 'package:karier_job_portal/pages/studio_home_page.dart';
import 'package:line_icons/line_icons.dart';

List sideMenuItems = [
  {
    "label": "Home",
    "selected": true,
    "icon": LineIcons.home,
    "page": KarierHomePage()
  },
  {
    "label": "Applications",
    "selected": false,
    "icon": Icons.apps,
    "page": StudioHomePage()
  },
  {
    "label": "Notification",
    "selected": false,
    "icon": LineIcons.bell,
    "page": NotificationsPage()
  },
  {
    "label": "Profile",
    "selected": false,
    "icon": Icons.account_circle_outlined,
    "page": ProfilePage()
  },
];
