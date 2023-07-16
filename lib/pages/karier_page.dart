import 'package:flutter/material.dart';
import 'package:karier_job_portal/dummy/karier_json.dart';
import 'package:karier_job_portal/theme/colors.dart';

import 'job_seeker_portal.dart';

class KarierPage extends StatefulWidget {
  const KarierPage({super.key});

  @override
  State<KarierPage> createState() => _KarierPageState();
}

class _KarierPageState extends State<KarierPage> {
  
  int karierIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getFirstSection(),
        const SizedBox(height: 50),
        getSecondSection(),
        const SizedBox(height: 30),
        getThirdSection()
      ],
    );
  }

  Widget getFirstSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 120),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: secondary,
                    image: DecorationImage(
                        image: AssetImage("assets/images/Icon.png"),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(color: white, boxShadow: [
                      BoxShadow(
                        color: black.withOpacity(0.015),
                      )
                    ]),
                    child: Center(
                      child: Text(
                        "Karier",
                        style: TextStyle(
                            fontSize: 35,
                            color: secondary,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Job Portal App",
                    style: TextStyle(
                        fontSize: 15,
                        color: black.withOpacity(0.4),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget getSecondSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 50, top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Who are you ?",
            style: TextStyle(
              fontSize: 22,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
            style: TextStyle(
              fontSize: 14,
              height: 1.6,
              fontFamily: 'Poppins',
              color: black.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }

  Widget getThirdSection() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Row(
          children: List.generate(karierJson.length, (index) {
            if (karierIndex == index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      karierIndex = index;
                      
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: size.width * 0.7,
                            height: 250,
                            decoration: BoxDecoration(
                                color: white.withOpacity(0.01),
                                border: Border.all(color: primary),
                                boxShadow: [
                                  BoxShadow(
                                      color: black.withOpacity(0.015),
                                      blurRadius: 10,
                                      spreadRadius: 10)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 30, right: 20, left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    color: black.withOpacity(0.4),
                                    child: Icon(
                                      karierJson[index]['icon'],
                                      size: 48,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Text(
                                    karierJson[index]['name'],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins'),
                                  ),
                                  const SizedBox(height: 8),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 45, right: 30),
                                    child: Text(
                                      karierJson[index]['description'],
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          color: black.withOpacity(0.7),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 120,
                            bottom: -10,
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: green,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: secondary.withOpacity(0.15),
                                        blurRadius: 5,
                                        offset: Offset(0, 5))
                                  ]),
                              child: Center(
                                child: Icon(
                                  Icons.check,
                                  color: white,
                                  size: 25,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }
            return Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    karierIndex = index;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width * 0.7,
                          height: 250,
                          decoration: BoxDecoration(
                              color: white.withOpacity(0.01),
                              border: Border.all(color: primary),
                              boxShadow: [
                                BoxShadow(
                                    color: black.withOpacity(0.015),
                                    blurRadius: 10,
                                    spreadRadius: 10)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 30, right: 20, left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  color: black.withOpacity(0.4),
                                  child: Icon(
                                    karierJson[index]['icon'],
                                    size: 48,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Text(
                                  karierJson[index]['name'],
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins'),
                                ),
                                const SizedBox(height: 8),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 45, right: 30),
                                  child: Text(
                                    karierJson[index]['description'],
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        color: black.withOpacity(0.7),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget getFooter() {
    return Padding(
      padding: const EdgeInsets.only(right: 25, left: 25, bottom: 40),
      child: GestureDetector(
        onTap: () {
          
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => JobSeekerPortal(
                        
                      )));
        },
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
              color: secondary, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              "Next",
              style: TextStyle(
                  color: white, fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
