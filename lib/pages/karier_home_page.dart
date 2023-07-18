import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:karier_job_portal/dummy/karier_json.dart';
import 'package:karier_job_portal/theme/colors.dart';
import 'package:karier_job_portal/widgets/canvas_draw.dart';
import 'package:line_icons/line_icons.dart';

import 'drawer_page.dart';
import 'karier_apply_job_page.dart';


class KarierHomePage extends StatefulWidget {
  const KarierHomePage({super.key});

  @override
  State<KarierHomePage> createState() => _KarierHomePageState();
}

class _KarierHomePageState extends State<KarierHomePage> {
  late Canvas canvas;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: DrawerPage(),
      backgroundColor: Color(0xFFFAFAFA),
      appBar:
          PreferredSize(child: getAppBar(), preferredSize: Size.fromHeight(60)),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          scaffoldKey.currentState?.openDrawer();
        },
        icon: Icon(
          AntDesign.menu_unfold,
          color: secondary,
        ),
      ),
      elevation: 0,
      backgroundColor: white.withOpacity(0.95),
      actions: [
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: secondary.withOpacity(0.5))),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/images/jibrel.jpeg"),
                      fit: BoxFit.cover)),
            ),
          ),
        )
      ],
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            getFirstSection(),
            const SizedBox(height: 30),
            getSecondSection(),
            const SizedBox(height: 30),
            getCategorySection(),
            const SizedBox(height: 30),
            getVocancySection(),
            const SizedBox(height: 30),
            getListVocanciesSection(),
          ],
        ),
      ),
    );
  }

  Widget getFirstSection() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 20),
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
                    "Good morning,",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "William Smith",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjF8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"),
                        fit: BoxFit.cover)),
              )
            ],
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color(0xFFE9E9E9)),
                boxShadow: [
                  BoxShadow(
                      color: secondary.withOpacity(0.015),
                      blurRadius: 10,
                      offset: Offset(0, 5))
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: (size.width - 30) * 0.7,
                  height: 55,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextField(
                      cursorColor: white.withOpacity(0.4),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search job here...",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF585858),
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Container(
                      height: 55,
                      child: Center(
                        child: Icon(
                          Icons.search,
                          size: 24,
                          color: black.withOpacity(0.4),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getSecondSection() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(karierJobList.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              width: (size.width) * 0.7,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: karierJobList[index]['color']),
              child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              karierJobList[index]['point'].toString(),
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                color: white,
                              ),
                            ),
                            Text(
                              karierJobList[index]['name'].toString(),
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF808FC7),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CustomPaint(
                              painter: MyCustomPainter(
                                  data: karierJobList[index]['data']),
                              size: Size(85, 25),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                karierJobList[index]['state']
                                            .toString()
                                            .toLowerCase()
                                            .compareTo("increases") ==
                                        0
                                    ? Icon(
                                        Icons.arrow_drop_up,
                                        size: 22,
                                        color: green,
                                      )
                                    : Icon(
                                        Icons.arrow_drop_down,
                                        size: 22,
                                        color: Colors.red,
                                      ),
                                Text(
                                  "${karierJobList[index]['percent'].toString()}%",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: white),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget getCategorySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    color: black),
              ),
              Text(
                "More",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF122261),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(karierCategoriesList.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  width: 135,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xFFE3E7FA)),
                      color: Color(0xFFF2F4FC)),
                  child: Center(
                    child: Row(
                      children: [
                        Icon(
                          karierCategoriesList[index]['icon'],
                          size: 20,
                          color: Color(0xFF122261),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          karierCategoriesList[index]['title'],
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF122261)),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        )
      ],
    );
  }

  Widget getVocancySection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(karierVocancyList.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              child: Container(
                width: 200,
                height: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0x1A122261)),
                    color: white),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(color: Color(0xFFD3D3D3)),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        karierVocancyList[index]['title'],
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        karierVocancyList[index]['location'],
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF212121),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "${karierVocancyList[index]['number_vocancy'].toString()} Vocancy",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF122261),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget getListVocanciesSection() {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "List Vocancies",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    color: black),
              ),
              Text(
                "More",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF122261),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Column(
          children: List.generate(karierVocanciesLists.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => KarierApplyJobPage(
                          vocancyName: karierVocanciesLists[index]
                              ['vocancy_name'],
                          location: karierVocanciesLists[index]['location'],
                          typeCourse: karierVocanciesLists[index]
                              ['type_course'],
                          lastVisit: karierVocanciesLists[index]['last_visit']
                              .toString(),
                          initialPrice: karierVocanciesLists[index]
                                  ['initial_price']
                              .toString(),
                          endPrice: karierVocanciesLists[index]['end_price']
                              .toString(),
                          save: karierVocanciesLists[index]['save'],
                        ),
                      ));
                },
                child: Container(
                  width: size.width - 40,
                  height: 130,
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0x1A122261)),
                      boxShadow: [
                        BoxShadow(
                            color: black.withOpacity(0.015),
                            blurRadius: 10,
                            offset: Offset(0, 5))
                      ]),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(right: 15, left: 15, top: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: secondary.withOpacity(0.4)),
                        ),
                        const SizedBox(width: 10),
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Text(
                                      karierVocanciesLists[index]
                                          ['vocancy_name'],
                                      softWrap: true,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF212121),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    karierVocanciesLists[index]['location'],
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF808080),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    width: 80,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: black.withOpacity(0.1)),
                                    child: Center(
                                      child: Text(
                                        karierVocanciesLists[index]
                                            ['type_course'],
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF122261),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(width: 5),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  karierVocanciesLists[index]['save']
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
                                    "${karierVocanciesLists[index]['last_visit'].toString()}h ago",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF808080),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    "\$${karierVocanciesLists[index]['initial_price'].toString()} - \$${karierVocanciesLists[index]['initial_price'].toString()}",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF122261),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        )
      ],
    );
  }
}
