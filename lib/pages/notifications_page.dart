import 'package:flutter/material.dart';
import 'package:karier_job_portal/dummy/karier_json.dart';
import 'package:karier_job_portal/theme/colors.dart';
import 'package:line_icons/line_icons.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
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
          children: [
            const SizedBox(height: 70),
            getFirstSection(),
            const SizedBox(height: 30),
            getNotifySection()
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
              "Notifications",
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

  Widget getNotifySection() {
    return Column(
      children: List.generate(notifyJson.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Container(
            width: double.infinity,
            height: 140,
            decoration: BoxDecoration(
                color: white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  notifyJson[index]['new_message']
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
                              notifyJson[index]['notify_name'],
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
                          notifyJson[index]['notify_name'],
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF000000),
                          ),
                        ),
                  const SizedBox(height: 10),
                  Text(
                    notifyJson[index]['message'],
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: notifyJson[index]['new_message']
                          ? Color(0xFF000000)
                          : Color(0xFF484848),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        LineIcons.clock,
                        size: 15,
                        color: Color(0xFF787878),
                      ),
                      const SizedBox(width: 5),
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              notifyJson[index]['sent_time'],
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF787878)),
                            ),
                            notifyJson[index]['more']
                                ? Text(
                                    "Mark as read",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF122261)),
                                  )
                                : Text('')
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
