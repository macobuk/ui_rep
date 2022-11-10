import 'package:flutter/material.dart';
import 'package:ui_rep/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int value = 6;
    return Scaffold(
      appBar: _appBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 20),
              _topCard(context),
              const SizedBox(height: 23),
              _meetingCard(context),
              const SizedBox(height: 20),
              _completionStatus(context, value),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Row(
                  children: [
                    _timeTable(context),
                    const SizedBox(width: 4),
                    sideCards(context),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  sideCards(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 4.7,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: colors["primaryYellow"]!.withOpacity(0.3),
                    spreadRadius: 4,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Daily Tip.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.lightbulb_circle_outlined,
                      color: colors["primaryAqua"],
                      size: 35,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Get a life, ditch em thingamabobs",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 4.7,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: colors["primaryYellow"]!.withOpacity(0.3),
                    spreadRadius: 4,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Text(
                    "Daily Quotes.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      "The size of your sucess is measured by the strength of your desire;the size of your dream ; and how you handle disappointment along the way.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w500),
                      //overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 4.0),
                    child: Text(
                      "--Robert Kiyosaki",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _timeTable(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 2.4,
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: colors["primaryYellow"]!.withOpacity(0.3),
              spreadRadius: 4,
              blurRadius: 5,
              offset: const Offset(0, 3),
            )
          ],
        ),
        child: Row(
          children: [
            Column(
              children: List.generate(
                10,
                (index) {
                  var value = index + 1;
                  return Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8.0, right: 15, top: 8),
                        child: Text(
                          "${value.toString()}:00",
                          style: GoogleFonts.ubuntu(
                            fontSize: 19.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              width: 3,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Expanded(
              child: Column(
                children: List.generate(
                  10,
                  (index) {
                    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 15, top: 8),
                          child: Text(
                            index.isEven ? "..." : "Meeting",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.ubuntu(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _completionStatus(BuildContext context, int value) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width / 3.3,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: colors["primaryYellow"]!.withOpacity(0.3),
                    spreadRadius: 4,
                    blurRadius: 5,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 60,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: AssetImage("assets/foodicon.png"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: SliderTheme(
                      data: SliderThemeData(
                        trackHeight: 8,
                        activeTrackColor: colors["primaryAqua"],
                        inactiveTrackColor: colors["primaryPurple"],
                        thumbColor: colors["primaryAqua"],
                        thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 6,
                        ),
                      ),
                      child: Slider(
                        value: value.toDouble(),
                        min: 1.0,
                        max: 10.0,
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 5.0, left: 5, right: 5),
                    child: Text(
                      "${40.toDouble()}% completed",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.ubuntu(),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  _meetingCard(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: colors["primaryYellow"]!.withOpacity(0.3),
            spreadRadius: 4,
            blurRadius: 5,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Row(
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/online-meeting.png",
                height: 45,
              )),
          const Text(
            "Meeting with jerry",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 22,
            ),
          )
        ],
      ),
    );
  }

  _topCard(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      // height: 120,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: colors["primaryPurple"]!.withOpacity(0.3),
            spreadRadius: 4,
            blurRadius: 5,
            offset: const Offset(0, 3),
          )
        ],
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Good Morning John.",
                    style: GoogleFonts.ubuntu(fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "You have ",
                          style: _txtStyle1(),
                        ),
                        TextSpan(
                          text: "7 ",
                          style: _txtStyle2(),
                        ),
                        TextSpan(
                          text: "tasks and ",
                          style: _txtStyle1(),
                        ),
                        TextSpan(
                          text: "1 ",
                          style: _txtStyle2(),
                        ),
                        TextSpan(
                          text: "target due today.",
                          style: _txtStyle1(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: colors["primaryPurple"],
                backgroundImage: const AssetImage("assets/avatar.png"),
                radius: 35,
              ),
            ),
          )
        ],
      ),
    );
  }

  _txtStyle2() {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 19,
      color: colors["primaryYellow"],
    );
  }

  _txtStyle1() {
    return const TextStyle(fontWeight: FontWeight.w400, fontSize: 19);
  }

  _appBar() {
    return AppBar(
      backgroundColor: colors["primaryYellow"],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),
      elevation: 0,
      surfaceTintColor: Colors.blue,
      leading: IconButton(
        splashRadius: 24,
        onPressed: () {},
        icon: const Icon(
          Icons.menu_rounded,
        ),
      ),
      actions: [
        IconButton(
          splashRadius: 24,
          onPressed: () {},
          icon: const Icon(
            Icons.message_outlined,
          ),
        ),
      ],
    );
  }
}
