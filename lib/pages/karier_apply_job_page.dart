import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:karier_job_portal/theme/colors.dart';
import 'package:line_icons/line_icons.dart';

import 'studio_home_page.dart';

class KarierApplyJobPage extends StatefulWidget {
  final String vocancyName;
  final String location;
  final String typeCourse;
  final String lastVisit;
  final String initialPrice;
  final String endPrice;
  final bool save;
  const KarierApplyJobPage(
      {super.key,
      required this.vocancyName,
      required this.location,
      required this.typeCourse,
      required this.lastVisit,
      required this.initialPrice,
      required this.endPrice,
      required this.save});

  @override
  State<KarierApplyJobPage> createState() => _KarierApplyJobPageState();
}

class _KarierApplyJobPageState extends State<KarierApplyJobPage> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 195,
              child: Stack(
                children: [
                  appBarSetting(),
                  appBarProfile(),
                ],
              ),
            ),
            getInformationSection(),
            const SizedBox(height: 20),
            getInDetailedSection(),
            const SizedBox(height: 20),
            getTabs(),
            const SizedBox(height: 20),
            pageIndex == 0 ? getListJobDesc() : getListGallery()
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
        height: 110,
        decoration: BoxDecoration(
          color: Color(0xFF1D2D66),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
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
    return Positioned(
      left: 120,
      bottom: 0,
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
              color: Color(0xFF000000),
            ),
          ),
        ],
      ),
    );
  }

  Widget getInformationSection() {
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.vocancyName,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF212121),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.location,
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF808080),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    widget.save
                        ? Icon(
                            Icons.bookmark,
                            color: secondary,
                            size: 25,
                          )
                        : Icon(
                            LineIcons.bookmark,
                            size: 25,
                          ),
                    const SizedBox(height: 10),
                    Text(
                      "pasted ${widget.lastVisit}h ago",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF808080),
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

  Widget getInDetailedSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(
              "Salary",
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: Color(0xFF424242),
              ),
            ),
            const SizedBox(height: 3),
            Text(
              "\$${widget.initialPrice} - \$${widget.endPrice}",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF122261)),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              "Experience",
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: Color(0xFF424242),
              ),
            ),
            const SizedBox(height: 3),
            Text(
              "3 - 5 Years",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF122261)),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              "Employment",
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: Color(0xFF424242),
              ),
            ),
            const SizedBox(height: 3),
            Text(
              widget.typeCourse,
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF122261)),
            ),
          ],
        ),
      ],
    );
  }

  Widget getTabs() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        width: size.width,
        height: 55,
        decoration: BoxDecoration(color: secondary.withOpacity(0.05)),
        child: Row(children: [
          pageIndex == 0
              ? Flexible(
                  child: ElasticIn(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          pageIndex = 0;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          width: (size.width - 40) / 2,
                          height: 50,
                          decoration: BoxDecoration(color: white, boxShadow: [
                            BoxShadow(
                                color: secondary.withOpacity(0.15),
                                blurRadius: 5,
                                offset: Offset(0, 5))
                          ]),
                          child: Center(
                            child: Text(
                              "Job Desc.",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF122261),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              : Flexible(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        pageIndex = 0;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        width: (size.width - 40) / 2,
                        height: 50,
                        decoration: BoxDecoration(),
                        child: Center(
                          child: Text(
                            "Job Desc.",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: secondary.withOpacity(0.5)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
          pageIndex == 1
              ? Flexible(
                  child: ElasticIn(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          pageIndex = 1;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          width: (size.width - 40) / 2,
                          height: 50,
                          decoration: BoxDecoration(color: white, boxShadow: [
                            BoxShadow(
                                color: secondary.withOpacity(0.15),
                                blurRadius: 5,
                                offset: Offset(0, 5))
                          ]),
                          child: Center(
                            child: Text(
                              "Gallery",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF122261),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              : Flexible(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        pageIndex = 1;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        width: (size.width - 40) / 2,
                        height: 50,
                        decoration: BoxDecoration(),
                        child: Center(
                          child: Text(
                            "Gallery",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: secondary.withOpacity(0.5)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
        ]),
      ),
    );
  }

  Widget getListJobDesc() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text:
                  "The purpose of lorem ipsum is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn't distract from the layout. A practice not without controversy, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.",
              style: TextStyle(
                color: Color(0xFF313131),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Requirements",
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              color: Color(0xFF313131),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text:
                  "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in",
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

  Widget getListGallery() {
    return Column();
  }

  Widget getFooter() {
    return Padding(
      padding: const EdgeInsets.only(right: 25, left: 25, bottom: 35),
      child: GestureDetector(
        onTap: () {
          showFormDialog();
        },
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
              color: secondary, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              "APPLY FOR THIS JOB",
              style: TextStyle(
                  color: white, fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }

  showFormDialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
            content: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  width: 400,
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(60),
                      boxShadow: [
                        BoxShadow(
                            color: black.withOpacity(0.015),
                            blurRadius: 30,
                            offset: Offset(0, 30))
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Apply Form",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF000000),
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Color(0xFFAAAAAA),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      color: black.withOpacity(0.009),
                                      blurRadius: 2,
                                      offset: Offset(0, 2))
                                ]),
                            child: Center(
                                child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.clear,
                                color: white,
                                size: 16,
                              ),
                            )),
                          )
                        ],
                      ),
                      const Divider(),
                      const SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFFC1CEFF),
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
                                  Icon(
                                    LineIcons.plus,
                                    size: 12,
                                    color: Color(0xFF122261),
                                  ),
                                  Text(
                                    "Upload Resume",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF122261),
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.upload_file_sharp,
                                color: Color(0xFF122261),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFFE9E9E9)),
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFFF8F8F8).withOpacity(0.9),
                            boxShadow: [
                              BoxShadow(
                                  color: black.withOpacity(0.015),
                                  blurRadius: 10,
                                  offset: Offset(0, 10))
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "William Smith",
                            hintStyle: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF000000)),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFFE9E9E9)),
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFFF8F8F8).withOpacity(0.9),
                            boxShadow: [
                              BoxShadow(
                                  color: black.withOpacity(0.015),
                                  blurRadius: 10,
                                  offset: Offset(0, 10))
                            ]),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "williamsmithy@mail.com",
                            hintStyle: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF000000)),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFFE9E9E9)),
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFFF8F8F8).withOpacity(0.9),
                            boxShadow: [
                              BoxShadow(
                                  color: black.withOpacity(0.015),
                                  blurRadius: 10,
                                  offset: Offset(0, 10))
                            ]),
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: "Phone number",
                            hintStyle: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF979797)),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => StudioHomePage()));
                        },
                        child: Container(
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                              color: secondary,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "APPLY JOB",
                              style: TextStyle(
                                  color: white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
