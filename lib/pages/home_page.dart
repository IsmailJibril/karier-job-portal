import 'package:flutter/material.dart';
import 'package:karier_job_portal/dummy/slide_text.dart';
import 'package:karier_job_portal/pages/karier_page.dart';
import 'package:karier_job_portal/theme/colors.dart';
import 'package:karier_job_portal/widgets/text_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        //const SizedBox(height: 10),
        getSecondSection(),
      ],
    );
  }

  Widget getFirstSection() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 80),
          Container(
            width: size.width - 120,
            height: 270,
            decoration: BoxDecoration(
                border: Border.all(color: white),
                image: DecorationImage(
                    image: AssetImage("assets/images/Photo1.jpg"), fit: BoxFit.cover)),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 40),
            child: Text(
              "Get the job that what you want",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget getSecondSection() {
    return TextSlider(
      items: adsText,
    );
  }

  Widget getFooter() {
    return Padding(
      padding: const EdgeInsets.only(right: 25, left: 25, bottom: 40),
      child: GestureDetector(
        onTap: () {
          
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => KarierPage()));
        },
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
              color: secondary, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              "GET STARTED",
              style: TextStyle(
                  color: white, fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
