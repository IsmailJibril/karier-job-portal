import 'package:flutter/material.dart';
import 'package:karier_job_portal/theme/colors.dart';


class SudioChatPage extends StatefulWidget {
  final String senderName;
  final String message;
  final bool newMessage;
  final bool onLine;
  const SudioChatPage(
      {super.key,
      required this.senderName,
      required this.message,
      required this.newMessage,
      required this.onLine});

  @override
  State<SudioChatPage> createState() => _SudioChatPageState();
}

class _SudioChatPageState extends State<SudioChatPage> {
  final List<String> keyboardCharacters = [
    'Q',
    'W',
    'E',
    'R',
    'T',
    'Y',
    'U',
    'I',
    'O',
    'P',
    'A',
    'S',
    'D',
    'F',
    'G',
    'H',
    'J',
    'K',
    'L',
    'Z',
    'X',
    'C',
    'V',
    'B',
    'N',
    'M',
  ];
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
            const SizedBox(height: 50),
            getChatMessage(),
            const SizedBox(height: 30),
            getCustomMessage("Do you have a time for interviews today?", 4.30),
            const SizedBox(height: 10),
            getMeMessage("Yes, I have.", 9.30),
            const SizedBox(height: 10),
            widget.newMessage
                ? getCustomMessage(widget.message, 9.44)
                : getMeMessage(widget.message, 9.40),
            const SizedBox(height: 10),
            getInputChat(),
            //getkeyboard()
          ],
        ),
      ),
    );
  }

  Widget getChatMessage() {
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
              widget.senderName,
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                color: Color(0xFF000000),
              ),
            ),
            widget.onLine
                ? Text(
                    "ONLINE",
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF7D7D7D),
                    ),
                  )
                : Text(
                    "Last seen 12m ago",
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF7D7D7D),
                    ),
                  )
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

  Widget getCustomMessage(String message, double time) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: Color(0xFFC4C4C4),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(width: 15),
            Container(
              width: 270,
              height: 70,
              decoration: BoxDecoration(
                color: Color(0xFFC4C4C4),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  message,
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF0F1631)),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 7),
        Text(
          "${time.toString()} AM",
          style: TextStyle(
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              color: Color(0xFF969696)),
        )
      ],
    );
  }

  Widget getMeMessage(String message, double time) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 160,
              height: 80,
              decoration: BoxDecoration(
                  color: Color(0xFF122261),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    message,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 7),
            Text(
              "${time.toString()} AM",
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: Color(0xFF969696),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget getInputChat() {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: white
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: TextField(
          
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.sentiment_satisfied_sharp,size: 26,color: Color(0xFFCAC6C1),),
            hintText: "Type message...",
            hintStyle: TextStyle(
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              color: Color(0xFFB0B0B0),
            ),
            suffixIcon: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                
                color: Color(0xFF122261),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(Icons.arrow_forward_ios,color: white,size: 22,),
              ),
            )
          ),
        ),
      ),
    );
  }
  // Widget getkeyboard() {
  //   return GridView.builder(
  //     gridDelegate:
  //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6),
  //     itemCount: keyboardCharacters.length,
  //     itemBuilder: (BuildContext context, int index) {
  //       final character = keyboardCharacters[index];
  //       return Container(
  //         padding: const EdgeInsets.all(4.0),
  //         child: TextButton(
  //           style: ButtonStyle(
  //             backgroundColor:
  //                 MaterialStateProperty.all<Color>(Colors.grey[300]!),
  //           ),
  //           onPressed: () {},
  //           child: Text(
  //             character,
  //             style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }
}
