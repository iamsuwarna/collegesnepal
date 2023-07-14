import 'package:flutter/material.dart';

class GlobalVariables {
  // COLORS
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 29, 201, 192),
      Color.fromARGB(255, 125, 221, 216),
    ],
    stops: [0.5, 1.0],
  );

  static const mainColor = Color.fromRGBO(1, 105, 171, 1.0);
  static const backColor = Color.fromRGBO(235, 235, 235, 1.0);
  static const categoryColor = Color(0xf29200);
  // static const mainColor = Color.fromRGBO(65, 105, 225, 1);
  // static const mainColor = Colors.purple;
  static const backgroundColour = Color.fromRGBO(242, 244, 255, 1);
  static const eventListColor = Color.fromRGBO(0, 191, 225, 1);
  static const secondaryColor = Color.fromRGBO(254, 181, 72, 1);
  static const Color greyBackgroundColor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.cyan[800]!;
  static const unselectedNavBarColor = Colors.black87;

  static const List<String> newsData = [
    "MA third semester exam notice of 2021 batch published by Tribhuvan University",
    "Tribhuvan University exam schedule of 2021 batch MA third semester program published.",
    "Tribhuvan University re-totaling results of BSc four years of 2078 third part published by Office of the Controller of exam",
    "T.U. published four years BSc 2078 third part re-totaling results by Office of the Controller of Exam",
    "Tribhuvan University FOHSS published MA results of CPDS Library Science History linguistics nepal bhasa political science sports science 2 and 4 semesters",
    "T.U. FOHSS published MA second and fourth semesters exam results of 2020 and 2021 batch programs",
    "Kathmandu University has recommended lecturers to its concerned colleges running under school of medical sciences",
    "Kathmandu University has recommended a list of professors for teaching at its concerned Medical Science Colleges",
    "Thesis dissertation submission notice of students who were admitted in 2058 B.S. and after that published by TU",
    "T.U. published thesis dissertation submission notice of students from 2058 and after",
    "Tribhuvan University exam results published for MBA third and fourth BTTM fifth BMS fifth and seventh BBA F BPA programs",
    "T.U. FOM published results of MBA 3&4,BTTM fifth BMS, BBA-F, BPA fifth and seventh semesters",
    "Tribhuvan University IOST publish MSc programs second year third semester examination centers notice",
    "Tribhuvan University IOST published second year third semester exam centers of MSc programs",
    "Tribhuvan University BCA program second semester study program related important notice",
    "Tribhuvan University have published important notice about BCA second semester 2022 study program",
    "Affiliation renewal time extended period notice to all Tribhuvan University Colleges running BCA BA MA and PGD",
    "T.U. published affiliation extended period to all concerned Colleges running BCA BA MA &PGD",
    "Master in data science second year fourth semester 2077 exam form filling notice by IOST TU",
    "T.U. publish Master in Data Science second year fourth semester 2077 exam form filling notice",
    "Bachelor of Mathematical Science third, fifth semesters of 2077 and fourth seventh semesters 2076 form fillup notice",
    "Tribhuvan University has published the exam form filling notice for Bachelor of Mathematical Science 2077/2076",
    "Bachelor in Information Technology second year fourth semester 2077 exam centers notice",
    "Tribhuvan University published BIT second year fourth semester of 2077 examination centers notice",
    "Tribhuvan University have published BScCSIT eight semester 2075 exam form filling notice",
    "Tribhuvan University published BScCSIT eight semester 2075 exam form filling notice",
    "Tribhuvan University revised exam schedules of BSc BBS BA BEd third year 2079 commencing from Ashad 2080",
    "Tribhuvan University published revised exam schedule of BSc BBS BA BEd third year 2079.",
  ];

//list for academic details

  static const List<String> plusTwoDetails = [
    "Science",
    "Management",
    "Humanities",
    "Hotel Management"
  ];
  static const List<String> bachelorsDetails = [
    "BIT",
    "BCA",
    "BHM",
    "BBM",
    "BE Computer",
    "BIM"
  ];
  static const List<String> mastersDetails = ["MBA", "MIT", "MSc"];

  static const List<Map<String, dynamic>> collegeData = [
    {
      'programName': '+2 Education',
      'totalNumber': "95 Colleges",
    },
    {
      'programName': '+2 Humanities',
      'totalNumber': "218 Colleges",
    },
    {
      'programName': '+2 Management',
      'totalNumber': "345 Colleges",
    },
    {
      'programName': '+2 Science',
      'totalNumber': "177 Colleges",
    },
    {
      'programName': 'A Level',
      'totalNumber': '12 Colleges',
    },
    {
      'programName': 'Agriculture',
      'totalNumber': "9 Colleges",
    },
    {
      'programName': 'Architecture',
      'totalNumber': "11 Colleges",
    },
    {
      'programName': 'Aviation',
      'totalNumber': "1 Colleges",
    },
    {
      'programName': '+2 Science',
      'totalNumber': "177 Colleges",
    },
    {
      'programName': 'A Level',
      'totalNumber': '12 Colleges',
    },
    {
      'programName': '+2 Education',
      'totalNumber': "95 Colleges",
    },
    {
      'programName': '+2 Humanities',
      'totalNumber': "218 Colleges",
    },
    {
      'programName': '+2 Management',
      'totalNumber': "345 Colleges",
    },
    {
      'programName': '+2 Science',
      'totalNumber': "177 Colleges",
    },
    {
      'programName': 'A Level',
      'totalNumber': '12 Colleges',
    },
    {
      'programName': '+2 Education',
      'totalNumber': "95 Colleges",
    },
    {
      'programName': '+2 Humanities',
      'totalNumber': "218 Colleges",
    },
    {
      'programName': '+2 Management',
      'totalNumber': "345 Colleges",
    },
    {
      'programName': '+2 Science',
      'totalNumber': "177 Colleges",
    },
    {
      'programName': 'A Level',
      'totalNumber': '12 Colleges',
    },
    {
      'programName': '+2 Education',
      'totalNumber': "95 Colleges",
    },
    {
      'programName': '+2 Humanities',
      'totalNumber': "218 Colleges",
    },
    {
      'programName': '+2 Management',
      'totalNumber': "345 Colleges",
    },
    {
      'programName': '+2 Science',
      'totalNumber': "177 Colleges",
    },
    {
      'programName': 'A Level',
      'totalNumber': '12 Colleges',
    },
  ];

  static const List<Map<String, dynamic>> collegedetails = [
    {
      'college_name': 'Islington College',
      'address': 'kamalpokhari, kathmandu',
      'phoneNumber': '98261251515'
    },
    {
      'college_name': 'Divyagyan College',
      'address': 'kamaladhi, kathmandu',
      'phoneNumber': '9827262617'
    },
    {
      'college_name': 'Himalaya College',
      'address': 'Damak, Jhapa',
      'phoneNumber': '01728281'
    },
    {
      'college_name': 'Kathmandu valley secondary school',
      'address': 'Dillibajar, kathmandu',
      'phoneNumber': '018271717'
    },
    {
      'college_name': 'Trinity International College',
      'address': 'Dillibazar, kathmandu',
      'phoneNumber': '019271616'
    },
    {
      'college_name': 'Jana Bhawana College',
      'address': 'Lakeside, Pokhara',
      'phoneNumber': '0192818191'
    },
    {
      'college_name': 'Islington College',
      'address': 'kamalpokhari, kathmandu',
      'phoneNumber': '98261251515'
    },
    {
      'college_name': 'Divyagyan College',
      'address': 'kamaladhi, kathmandu',
      'phoneNumber': '9827262617'
    },
    {
      'college_name': 'Himalaya College',
      'address': 'Damak, Jhapa',
      'phoneNumber': '01728281'
    },
    {
      'college_name': 'Kathmandu valley secondary school',
      'address': 'Dillibajar, kathmandu',
      'phoneNumber': '018271717'
    },
    {
      'college_name': 'Trinity International College',
      'address': 'Dillibazar, kathmandu',
      'phoneNumber': '019271616'
    },
    {
      'college_name': 'Jana Bhawana College',
      'address': 'Lakeside, Pokhara',
      'phoneNumber': '0192818191'
    },
  ];
}
