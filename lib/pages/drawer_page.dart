import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:karier_job_portal/dummy/side_menu_json.dart';
import 'package:karier_job_portal/theme/colors.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  List<Color> gradientColors = [Color(0xFF122261), Color(0xFF124561)];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [getHeader(), getBody(), getFooter()],
      ),
    );
  }

  Widget getHeader() {
    return SizedBox(
      height: 60,
      child: DrawerHeader(
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: secondary.withOpacity(0.2)),
                  image: DecorationImage(
                      image: AssetImage("assets/images/Icon.png"),
                      fit: BoxFit.cover)),
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Karier",
                    style: TextStyle(
                        color: Color(0xFF152C6A),
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: grey,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: secondary.withOpacity(0.15),
                              blurRadius: 5,
                              offset: Offset(0, 5))
                        ]),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Center(
                        child: Icon(
                          Icons.clear,
                          size: 15,
                          color: white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getBody() {
    return Column(
      children: List.generate(sideMenuItems.length, (index) {
        if (sideMenuItems[index]['selected']) {
          return FadeInLeft(
            duration: Duration(microseconds: 250),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(colors: gradientColors),
                    border: Border.all(color: secondary.withOpacity(0.05)),
                    boxShadow: [
                      BoxShadow(
                          color: secondary.withOpacity(0.03),
                          blurRadius: 2.5,
                          offset: Offset(0, 5))
                    ]),
                child: ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => sideMenuItems[index]['page']));
                  },
                  minLeadingWidth: 10,
                  leading: Icon(
                    sideMenuItems[index]['icon'],
                    color: white,
                  ),
                  title: Text(
                    sideMenuItems[index]['label'],
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      color: white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          );
        }
        return FadeInLeft(
          duration: Duration(
            milliseconds: index * 250,
          ),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => sideMenuItems[index]['page']));
              },
              minLeadingWidth: 10,
              leading: Icon(
                sideMenuItems[index]['icon'],
                color: Color(0xFFB0ACB3),
              ),
              title: Text(
                sideMenuItems[index]['label'],
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Color(0x99000000),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget getFooter() {
    return Column(
      children: [
        Divider(),
        FadeInLeft(
          duration: Duration(microseconds: 250),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFFFAFAFA),
                  border: Border.all(color: secondary.withOpacity(0.05)),
                  boxShadow: [
                    BoxShadow(
                        color: secondary.withOpacity(0.03),
                        blurRadius: 2.5,
                        offset: Offset(0, 5))
                  ]),
              child: ListTile(
                onTap: () {},
                minLeadingWidth: 10,
                leading: Icon(
                  AntDesign.logout,
                  color: Color(0xFFEF6464),
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                   color: Color(0x99000000),),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
