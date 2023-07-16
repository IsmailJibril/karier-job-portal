import 'package:karier_job_portal/theme/colors.dart';
import 'package:line_icons/line_icons.dart';

const List karierJson = [
  {
    "icon": LineIcons.personEnteringBooth,
    "name": "JOB SEEKERS",
    "description": "Finding a job here never been easier than before",
  },
  {
    "icon": LineIcons.building,
    "name": "COMPANY",
    "description": "Let’s recruit your great candidate faster here ",
  }
];

const List karierJobList = [
  {
    "name": "Jobs Applied",
    "point": 874,
    "color": secondary,
    "percent": 0.8,
  },
  {
    "name": "Interviewed",
    "point": 34,
    "color": primary,
    "percent": 0.3,
  },
  {
    "name": "Detalied",
    "point": 500,
    "color": grey,
    "percent": 0.6,
  },
];

const List karierCategoriesList = [
  {"icon": LineIcons.brush, "title": "Designer"},
  {"icon": LineIcons.camera, "title": "Phtpgrapher"},
  {"icon": LineIcons.code, "title": "Programmer"},
];

const List karierVocancyList = [
  {
    "title": "Crewmate Studios",
    "location": "Medan, Indonesia",
    "number_vocancy": 40,
  },
  {
    "title": "Othathinnk",
    "location": "Medan, Indonesia",
    "number_vocancy": 21,
  },
  {
    "title": "Othathinnksa",
    "location": "Manchester, London",
    "number_vocancy": 36,
  },
];

const List karierVocanciesLists = [
  {
    "vocancy_name": "Software Engineer",
    "location": "Medan, Indonesia",
    "type_course": "FULLTIME",
    "last_visit": 2,
    "initial_price": 5,
    "end_price": 10,
    "save": true,
  },
  {
    "vocancy_name": "Senior Frontend \nProgrammer",
    "location": "Manchester, London",
    "type_course": "INTERN",
    "last_visit": 2,
    "initial_price": 250,
    "end_price": 500,
    "save": false,
  },
  {
    "vocancy_name": "Principal UI Designer",
    "location": "Manchester, London",
    "type_course": "PART TIME",
    "last_visit": 2,
    "initial_price": 250,
    "end_price": 500,
    "save": false,
  },
  {
    "vocancy_name": "Senior Designer",
    "location": "Manchester, London",
    "type_course": "INTERN",
    "last_visit": 2,
    "initial_price": 250,
    "end_price": 500,
    "save": false,
  }
];

List karierCategorySearch = [
  "All",
  "Fulltime",
  "Freelanse",
  "Interviewed",
];

const List karierResultSearch = [
  {
    "vocancy_name": "Senior Designer",
    "location": "Manchester, London",
    "type_course": "INTERN",
    "last_visit": 2,
    "initial_price": 250,
    "end_price": 500,
    "save": false,
  },
  {
    "vocancy_name": "Senior Frontend \nProgrammer",
    "location": "Manchester, London",
    "type_course": "INTERN",
    "last_visit": 2,
    "initial_price": 250,
    "end_price": 500,
    "save": false,
  },
  {
    "vocancy_name": "Software Engineer",
    "location": "Medan, Indonesia",
    "type_course": "FULLTIME",
    "last_visit": 2,
    "initial_price": 5,
    "end_price": 10,
    "save": true,
  },
  {
    "vocancy_name": "Principal UI Designer",
    "location": "Manchester, London",
    "type_course": "PART TIME",
    "last_visit": 2,
    "initial_price": 250,
    "end_price": 500,
    "save": false,
  },
];

const List studioMessageJson = [
  {
    "name": "Kevin Louis",
    "last_message": "Hello William, Thankyou for your app..",
    "sent_time": 2,
    "read_message": "",
    "new_message": true,
    "on_line": false
  },
  {
    "name": "Olivia James",
    "last_message": "OK. Lorem ipsum dolor sect...",
    "sent_time": 2,
    "read_message": "Unread",
    "new_message": false,
    "on_line": false,
  },
  {
    "name": "Cindy Sinambela",
    "last_message": "OK. Lorem ipsum dolor sect...",
    "sent_time": 2,
    "read_message": "Pending",
    "new_message": false,
    "on_line": true,
  },
  {
    "name": "Sam Verdinand",
    "last_message": "Roger that sir, thankyou",
    "sent_time": 2,
    "read_message": "Read",
    "new_message": false,
    "on_line": true,
  },
  {
    "name": "David Mckanzie",
    "last_message": "Lorem ipsum dolor sit amet, consect...",
    "sent_time": 2,
    "read_message": "Read",
    "new_message": false,
    "on_line": true,
  },
  {
    "name": "Daphne Putri",
    "last_message": "OK. Lorem ipsum dolor sect...",
    "sent_time": 2,
    "read_message": "Unread",
    "new_message": false,
    "on_line": true,
  },
  {
    "name": "Cindy Sinambela",
    "last_message": "OK. Lorem ipsum dolor sect...",
    "sent_time": 2,
    "read_message": "Pending",
    "new_message": false,
    "on_line": true,
  },
];

const List notifyJson = [
  {
    "notify_name": "Apply Success",
    "message": "You has apply an job in Queenify Group as UI Designer",
    "sent_time": "10h ago",
    "new_message": true,
    "more": true,
  },
  {
    "notify_name": "Interview Calls",
    "message":
        "Congratulations! You have interview calls tomorrow. Check schedule here..",
    "sent_time": "4m ago",
    "new_message": false,
    "more": true,
  },
  {
    "notify_name": "Apply Success",
    "message": "You has apply an job in Queenify Group as UI Designer",
    "sent_time": "3 June",
    "new_message": false,
    "more": false,
  },
  {
    "notify_name": "Complete your profile",
    "message":
        "Please verify your profile information to continue using this app",
    "sent_time": "4 June",
    "new_message": false,
    "more": false,
  },
];

const List skillsProfileJson = [
  {
    "skill": "Drawing",
    "precentage": 0.7
  },
  {
    "skill": "Research",
    "precentage": 0.5
  },
  {
    "skill": "Sketch",
    "precentage": 0.8
  },
];
