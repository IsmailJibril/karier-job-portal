import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:karier_job_portal/dummy/karier_json.dart';
import 'package:karier_job_portal/theme/colors.dart';
import 'package:line_icons/line_icons.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

// #122261, #124561
class _ProfilePageState extends State<ProfilePage> {
  List<Color> gradientColors = [Color(0xFF122261), Color(0xFF124561)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: getBody(),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 30, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70),
            getFirstSection(),
            const SizedBox(height: 30),
            getProfileSection(),
            const SizedBox(height: 30),
            getSkillsSection(),
            const SizedBox(height: 30),
            getExperienceSection(),
          ],
        ),
      ),
    );
  }

  Widget getFirstSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: white,
                shape: BoxShape.rectangle,
                border: Border.all(color: secondary.withOpacity(0.2))),
            child: Center(
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 22,
                color: secondary,
              ),
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Profile",
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),
        Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
              color: white,
              shape: BoxShape.rectangle,
              boxShadow: [
                BoxShadow(
                    color: secondary.withOpacity(0.15),
                    blurRadius: 5,
                    offset: Offset(0, 5))
              ]),
          child: Center(
            child: Icon(
              Icons.more_vert,
              size: 25,
              color: secondary,
            ),
          ),
        ),
      ],
    );
  }

  Widget getProfileSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Color(0xFFC4C4C4),
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                        color: black.withOpacity(0.015),
                        blurRadius: 15,
                        offset: Offset(0, 15))
                  ]),
            ),
            const SizedBox(width: 15),
            Column(
              children: [
                Text(
                  "William Smith",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Designer",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Color(0xCC000000),
                  ),
                ),
                Container(
                  width: 100,
                  height: 40,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 30,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Color(0xFF2E0BB8), shape: BoxShape.circle),
                        child: Center(
                          child: Icon(
                            LineIcons.facebookF,
                            color: white,
                          ),
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Color(0xFFF63AAB), shape: BoxShape.circle),
                        child: Center(
                          child: Icon(
                            LineIcons.dribbble,
                            color: white,
                          ),
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Color(0xFF4F4BFF), shape: BoxShape.circle),
                        child: Center(
                          child: Icon(
                            LineIcons.behance,
                            color: white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
        const SizedBox(height: 30),
        Text(
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugi",
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            color: Color(0xFF000000),
          ),
        ),
        const SizedBox(height: 30),
        Container(
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(colors: gradientColors)),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "My Resume",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: white,
                      ),
                    ),
                    Text(
                      "david_resume.pdf",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: white,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.upload_file_rounded,
                  color: white,
                  size: 22,
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget getSkillsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Skills',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            color: Color(0xFF000000),
          ),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(skillsProfileJson.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  width: 120,
                  height: 130,
                  //decoration: BoxDecoration(color: white),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 100,
                        child: CircleProgressBar(
                          strokeWidth: 8,
                          foregroundColor: Color(0xFF123B61),
                          backgroundColor: Color(0xFFDEDEDE),
                          value: skillsProfileJson[index]['precentage'],
                          child: Center(
                              child: SizedBox(
                            width: 84,
                            child: CircleProgressBar(
                              foregroundColor: grey.withOpacity(0.4),
                              value: 1,
                              strokeWidth: 10,
                              child: Center(
                                child: Text(
                                  "${(skillsProfileJson[index]['precentage'] * 100).toString()}%",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ),
                            ),
                          )),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        skillsProfileJson[index]['skill'],
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF000000),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        )
      ],
    );
  }

  Widget getExperienceSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Experience",
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            color: Color(0xFF000000),
          ),
        ),
        const SizedBox(height: 20),
        Stack(
          children: [
            
            Container(
              width: double.infinity,
              height: 300,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 1,
                      height: 210,
                      decoration: BoxDecoration(color: Color(0xFF122261)),
                    ),
                    const SizedBox(width: 30),
                    Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "2018 - Now",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF122261),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Principal UI Designer",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF000000),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Kongkalikong Studios",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF848484),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "2015 - 2018",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF122261),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Lead Graphic Designer",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF000000),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Skuylah Inc.",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF848484),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "2012 - 2015",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF122261),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Junior Graphic Designer",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF000000),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Yokbisa yok Crew",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF848484),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: white
                  ),
                    color: Color(0xFF122261), shape: BoxShape.circle),
              ),
            ),
            Positioned(
              top: 96,
              left: 0,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF122261)),
                    color: Color(0xFFFFFFFF), shape: BoxShape.circle),
              ),
            ),
            Positioned(
              top: 194,
              left: 0,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFF122261)
                  ),
                    color: Color(0xFFFFFFFF), shape: BoxShape.circle,),
              ),
            ),
          ],
        ),
        const SizedBox(height: 40)
      ],
    );
  }
}
