import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:karier_job_portal/dummy/karier_json.dart';
import 'package:karier_job_portal/theme/colors.dart';

import 'studio_chat_page.dart';

class StudioMessagePage extends StatefulWidget {
  const StudioMessagePage({super.key});

  @override
  State<StudioMessagePage> createState() => _StudioMessagePageState();
}

class _StudioMessagePageState extends State<StudioMessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar:
          PreferredSize(child: getAppBar(), preferredSize: Size.fromHeight(60)),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      backgroundColor: Color(0xFFFAFAFA),
      title: Text(
        "Messages",
        style: TextStyle(
          fontSize: 24,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          color: Color(0xFF000000),
        ),
      ),
      elevation: 0,
      centerTitle: true,
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
    );
  }

  Widget getBody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              getSearchStudio(),
              const SizedBox(height: 30),
              getMessageStudio(),
            ],
          ),
        ),
      ),
    );
  }

  Widget getSearchStudio() {
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
                contentPadding:
                    const EdgeInsets.only(left: 20, top: 15, right: 20),
                border: InputBorder.none,
                hintText: "Search job here...",
                hintStyle: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF585858),
                ),
                suffixIcon: Icon(Icons.search)),
          ),
        ),
      ],
    );
  }

  Widget getMessageStudio() {
    var size = MediaQuery.of(context).size;
    return Column(
      children: List.generate(studioMessageJson.length, (index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => SudioChatPage(
                  senderName: studioMessageJson[index]['name'],
                  message: studioMessageJson[index]['last_message'],
                  newMessage: studioMessageJson[index]['new_message'],
                  onLine: studioMessageJson[index]['on_line'],
                )));
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              width: size.width,
              height: 75,
              child: Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Color(0xFFC4C4C4),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: black.withOpacity(0.015),
                                    blurRadius: 10,
                                    offset: Offset(0, 10))
                              ]),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                studioMessageJson[index]['new_message']
                                    ? Row(
                                        children: [
                                          Container(
                                            width: 12,
                                            height: 12,
                                            decoration: BoxDecoration(
                                                color: Color(0xFF122261),
                                                shape: BoxShape.circle),
                                          ),
                                          const SizedBox(width: 5),
                                          Text(
                                            studioMessageJson[index]['name'],
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                        ],
                                      )
                                    : Text(
                                        studioMessageJson[index]['name'],
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                const SizedBox(height: 5),
                                Text(
                                  studioMessageJson[index]['last_message'],
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "${studioMessageJson[index]['sent_time'].toString()}m ago",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF898A8D),
                                  ),
                                ),
                              ],
                            ),
                            studioMessageJson[index]['read_message']
                                        .toString()
                                        .compareTo("") ==
                                    0
                                ? Text('')
                                : Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Row(
                                      children: [
                                        Text(
                                          studioMessageJson[index]
                                              ['read_message'],
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              color: studioMessageJson[index]
                                                              ['read_message']
                                                          .toString()
                                                          .toLowerCase()
                                                          .compareTo("read") ==
                                                      0
                                                  ? Color(0xFF122261)
                                                  : Color(0xFF898A8D)),
                                        ),
                                        const SizedBox(width: 2),
                                        Icon(Icons.check,
                                            size: 10,
                                            color: studioMessageJson[index]
                                                            ['read_message']
                                                        .toString()
                                                        .toLowerCase()
                                                        .compareTo("read") ==
                                                    0
                                                ? Color(0xFF122261)
                                                : Color(0xFF898A8D))
                                      ],
                                    ),
                                  )
                          ],
                        ),
                      )
                    ],
                  ),
                  studioMessageJson[index]['on_line']
                      ? Positioned(
                          left: 0,
                          bottom: 10,
                          child: Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                  color: white, shape: BoxShape.circle),
                              child: Center(
                                child: Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: green, shape: BoxShape.circle),
                                ),
                              )),
                        )
                      : Text('')
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
