import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:karier_job_portal/theme/colors.dart';

class ActiveDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 3, right: 3),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: secondary,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}

class InactiveDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 3, right: 3),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: grey,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}

class TextSlider extends StatefulWidget {
  final List items;
  const TextSlider({required this.items, Key? key}) : super(key: key);

  @override
  _TextSliderState createState() => _TextSliderState();
}

class _TextSliderState extends State<TextSlider> {
  int activeIndex = 0;

  setActiveDot(index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          child: CarouselSlider(
            options: CarouselOptions(
              height: 120,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setActiveDot(index);
              },
            ),
            items: List.generate(
              this.widget.items.length,
              (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 40, left: 40),
                  child: Center(
                    child: Text(
                      widget.items[index],
                      style: TextStyle(
                          fontSize: 14,
                          height: 1.6,
                          color: black.withOpacity(0.6),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Positioned(
          bottom: 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              widget.items.length,
              (idx) {
                return activeIndex == idx ? ActiveDot() : InactiveDot();
              },
            ),
          ),
        ),
      ],
    );
  }
}
