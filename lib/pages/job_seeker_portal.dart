import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:karier_job_portal/pages/karier_home_page.dart';

import 'package:karier_job_portal/theme/colors.dart';

class JobSeekerPortal extends StatefulWidget {
  const JobSeekerPortal({
    super.key,
  });

  @override
  State<JobSeekerPortal> createState() => _JobSeekerPortalState();
}

class _JobSeekerPortalState extends State<JobSeekerPortal> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getProfileSection(),
            const SizedBox(height: 40),
            getTabs(),
            const SizedBox(height: 30),
            pageIndex == 0 ? getListSignIn() : getListRegister()
          ],
        ));
  }

  Widget getProfileSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 30, top: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Job Seeker Portal",
            style: TextStyle(
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 10),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
            style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                color: black.withOpacity(0.4)),
          ),
        ],
      ),
    );
  }

  Widget getTabs() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        width: size.width,
        height: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: secondary.withOpacity(0.05)),
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
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                    color: secondary.withOpacity(0.15),
                                    blurRadius: 5,
                                    offset: Offset(0, 5))
                              ]),
                          child: Center(
                            child: Text(
                              "SIGN IN",
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
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            "SIGN IN",
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
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                    color: secondary.withOpacity(0.15),
                                    blurRadius: 5,
                                    offset: Offset(0, 5))
                              ]),
                          child: Center(
                            child: Text(
                              "REGISTER",
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
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            "REGISTER",
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

  Widget getListSignIn() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width - 44,
            height: 55,
            decoration: BoxDecoration(
                color: Color(0xFFF8F8F8),
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "Username"),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFFF8F8F8)),
            child: Row(
              children: [
                Container(
                  width: (size.width - 30) * 0.7,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color(0xFFF8F8F8),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Color(0x66323232),
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Container(
                      height: 55,
                      child: Center(
                        child: Text(
                          "SHOW",
                          style: TextStyle(
                            color: Color(0xFF122261),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => KarierHomePage()));
            },
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: secondary, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                      color: white, fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Text(
                "Forgot your password?",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: black.withOpacity(0.4)),
              ),
              Container(
                width: 86,
                height: 25,
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Color(0xFF122261)))),
                child: Text(
                  "Reset here",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: secondary),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Or sign in with",
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: black,
              ),
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => KarierHomePage()));
            },
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFF376AED),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.facebook,
                      size: 25,
                      color: white,
                    ),
                    const SizedBox(width: 22),
                    Center(
                      child: Text(
                        "Login with Facebook",
                        style: TextStyle(
                            color: white,
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => KarierHomePage()));
            },
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFD1D1D1)),
                color: white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://62e528761d0685343e1c-f3d1b99a743ffa4142d9d7f1978d9686.ssl.cf2.rackcdn.com/files/93616/area14mp/image-20150902-6700-t2axrz.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(width: 22),
                    Center(
                      child: Text(
                        "Login with Google",
                        style: TextStyle(
                            color: Color(0xFF242424),
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getListRegister() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: (size.width - 100) / 2,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xFFE9E9E9)),
                  color: Color(0xFFF8F8F8),
                ),
                child: Center(
                  child: Text(
                    "William",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF323232),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                width: (size.width - 100) / 2,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xFFE9E9E9)),
                  color: Color(0xFFF8F8F8),
                ),
                child: Center(
                  child: Text(
                    "Smith",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF323232),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Container(
            width: size.width - 44,
            height: 55,
            decoration: BoxDecoration(
                color: Color(0xFFF8F8F8),
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 10),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "Email"),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFFF8F8F8)),
            child: Row(
              children: [
                Container(
                  width: (size.width - 30) * 0.7,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color(0xFFF8F8F8),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Color(0x66323232),
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Container(
                      height: 55,
                      child: Center(
                        child: Text(
                          "SHOW",
                          style: TextStyle(
                            color: Color(0xFF122261),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => KarierHomePage()));
            },
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: secondary, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "Register",
                  style: TextStyle(
                      color: white, fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Align(
            alignment: Alignment.center,
            child: Wrap(
              children: [
                Text(
                  "By tapping “Sign Up” you accept our ",
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Color(0x80000000),
                  ),
                ),
                Text(
                  "terms ",
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF122261),
                  ),
                ),
                Text(
                  "and ",
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Color(0x80000000),
                  ),
                ),
                Text(
                  "condition",
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF122261),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => KarierHomePage()));
            },
            child: Container(
              width: double.infinity - 55,
              height: 65,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF122261)),
                color: white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  "Continue as guest",
                  style: TextStyle(
                      color: Color(0xFF122261),
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
