import 'package:flutter/material.dart';
import 'package:karier_job_portal/dummy/karier_json.dart';
import 'package:karier_job_portal/theme/colors.dart';
import 'package:line_icons/line_icons.dart';

import 'karier_apply_job_page.dart';

class KarierSearchPage extends StatefulWidget {
  const KarierSearchPage({super.key});

  @override
  State<KarierSearchPage> createState() => _KarierSearchPageState();
}

class _KarierSearchPageState extends State<KarierSearchPage> {
  int categoryIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white.withOpacity(0.95),
      appBar: PreferredSize(
          child: getAppBar(), preferredSize: Size.fromHeight(300)),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(right: 20, left: 20),
        decoration: BoxDecoration(color: white),
        child: Column(
          children: [
            AppBar(
              centerTitle: true,
              title: Text(
                "Search",
                style: TextStyle(
                    color: secondary,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              leading: IconButton(
                icon: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      color: white,
                      shape: BoxShape.rectangle,
                      border: Border.all(color: secondary.withOpacity(0.2))),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 15,
                      color: secondary,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              elevation: 0,
              backgroundColor: white,
              actions: [
                Container(
                  width: 30,
                  height: 30,
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
                      Icons.settings,
                      size: 25,
                      color: secondary,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                )
              ],
            ),
            const SizedBox(height: 10),
            getSearchSection(),
            const SizedBox(height: 20),
            getCategorySearch(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            getResultSection(),
            const SizedBox(height: 30),
            getResultSearchSection(),
          ],
        ),
      ),
    );
  }

  Widget getSearchSection() {
    return Column(
      children: [
        Container(
          height: 55,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: secondary.withOpacity(0.3)),
              borderRadius: BorderRadius.circular(5),
              color: white),
          child: TextField(
            cursorColor: secondary,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search ...",
                suffixIcon: Icon(Icons.clear)),
          ),
        ),
      ],
    );
  }

  Widget getCategorySearch() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(karierCategorySearch.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  categoryIndex = index;
                });
              },
              child: Container(
                width: 100,
                height: 40,
                decoration: categoryIndex == index
                    ? BoxDecoration(color: Color(0xFF122261))
                    : BoxDecoration(color: Color(0xFFF2F4FC)),
                child: Center(
                  child: Text(
                    karierCategorySearch[index],
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: categoryIndex == index
                            ? Color(0xFFFFFFFF)
                            : Color(0xFF122261)),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget getResultSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "679 Results",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Based your filter",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Color(0x66000000),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Newest",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF122261),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(color: Color(0xFFFAFAFA)),
                  child: Center(
                    child: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      size: 23,
                      color: Color(0xFF122261),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }

  Widget getResultSearchSection() {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Column(
          children: List.generate(karierResultSearch.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => KarierApplyJobPage(
                          vocancyName: karierResultSearch[index]
                              ['vocancy_name'],
                          location: karierResultSearch[index]['location'],
                          typeCourse: karierResultSearch[index]['type_course'],
                          lastVisit: karierResultSearch[index]['last_visit'].toString(),
                          initialPrice: karierResultSearch[index]
                              ['initial_price'].toString(),
                          endPrice: karierResultSearch[index]['end_price'].toString(),
                          save: karierResultSearch[index]['save'],
                        ),
                      ));
                },
                child: Container(
                  width: size.width - 40,
                  height: 130,
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(15),
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
                                      karierResultSearch[index]['vocancy_name'],
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
                                    karierResultSearch[index]['location'],
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
                                        karierResultSearch[index]
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
                                  karierResultSearch[index]['save']
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
                                    "${karierResultSearch[index]['last_visit'].toString()}h ago",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF808080),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    "\$${karierResultSearch[index]['initial_price'].toString()} - \$${karierResultSearch[index]['initial_price'].toString()}",
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
