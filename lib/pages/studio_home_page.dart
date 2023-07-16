import 'package:flutter/material.dart';
import 'package:karier_job_portal/theme/colors.dart';
import 'package:line_icons/line_icons.dart';

class StudioHomePage extends StatefulWidget {
  const StudioHomePage({super.key});

  @override
  State<StudioHomePage> createState() => _StudioHomePageState();
}

class _StudioHomePageState extends State<StudioHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              child: Stack(
                children: [
                  appBarSetting(),
                  appBarProfile(),
                ],
              ),
            ),
            const SizedBox(height: 10),
            getInformationStudio(),
            const SizedBox(height: 30),
            getAboutStudio(),
            const SizedBox(height: 30),
            getGalleryStudio(),
          ],
        ),
      ),
    );
  }

  Widget appBarSetting() {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        width: size.width,
        height: 300,
        decoration: BoxDecoration(
          color: Color(0xFF1D2D66),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(right: 20, left: 20, bottom: 20, top: 40),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                        color: Color(0xFF1D2D66).withOpacity(0.4),
                        border: Border.all(color: white.withOpacity(0.4)),
                        boxShadow: [
                          BoxShadow(
                              color: secondary.withOpacity(0.015),
                              blurRadius: 5,
                              offset: Offset(0, 5))
                        ]),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 25,
                        color: white,
                      ),
                    ),
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                        color: Color(0xFF1D2D66).withOpacity(0.4),
                        border: Border.all(color: white.withOpacity(0.4)),
                        boxShadow: [
                          BoxShadow(
                              color: secondary.withOpacity(0.015),
                              blurRadius: 5,
                              offset: Offset(0, 5))
                        ]),
                    child: Center(
                      child: Icon(
                        Icons.more_vert,
                        size: 25,
                        color: white,
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget appBarProfile() {
    var size = MediaQuery.of(context).size;
    return Positioned(
      left: 0,
      top: 50,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Color(0xFFD3D3D3),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: black.withOpacity(0.015),
                        blurRadius: 10,
                        offset: Offset(0, 10))
                  ]),
            ),
            const SizedBox(height: 20),
            Text(
              "Crewmate Studios",
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                color: Color(0xFFFFFFFF),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Medan, Indonesia",
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: white,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Icon(
                  LineIcons.starAlt,
                  color: Colors.orange,
                ),
                const SizedBox(width: 10),
                Text(
                  "4.5",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    color: white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              width: size.width - 40,
              height: 60,
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: black.withOpacity(0.015),
                        blurRadius: 10,
                        offset: Offset(0, 10))
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "See ",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: black,
                          ),
                        ),
                        Text(
                          "57 ",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF122261),
                          ),
                        ),
                        Text(
                          "Available Jobs",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: black,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 32,
                      height: 40,
                      decoration: BoxDecoration(color: white),
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Color(0xFFE1E1E1),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Color(0xFF122261),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getInformationStudio() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone_in_talk_sharp,
                      color: Color(0xFF122261),
                      size: 24,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Telephone",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF868686),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "+12 3456 789",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF313131),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.email,
                      color: Color(0xFF122261),
                      size: 24,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF868686),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "100 - 150",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF313131),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person_2_rounded,
                      color: Color(0xFF122261),
                      size: 24,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Employee",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF868686),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "100 - 150",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF313131),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget getAboutStudio() {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "About Crewmate Studios",
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                color: Color(0xFF313131),
              ),
            ),
          ),
          const SizedBox(height: 10),
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text:
                  "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in.",
              style: TextStyle(
                color: Color(0xFF313131),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getGalleryStudio() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Gallery",
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                color: Color(0xFF313131),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(2, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Row(
                    children: [
                      Container(
                        width: (size.width - 55) * 0.6,
                        height: 200,
                        decoration: BoxDecoration(
                            color: Color(0xFFC4C4C4),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: black.withOpacity(0.015),
                                blurRadius: 20,
                                offset: Offset(0, 20),
                              )
                            ]),
                      ),
                      const SizedBox(width: 15),
                      Column(
                        children: [
                          Container(
                            width: (size.width - 55) * 0.6,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Color(0xFFC4C4C4),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: black.withOpacity(0.015),
                                    blurRadius: 10,
                                    offset: Offset(0, 10),
                                  )
                                ]),
                          ),
                          const SizedBox(height: 30),
                          Container(
                            width: (size.width - 55) * 0.6,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Color(0xFFC4C4C4),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: black.withOpacity(0.015),
                                    blurRadius: 10,
                                    offset: Offset(0, 10),
                                  )
                                ]),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
