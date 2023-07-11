import 'package:flutter/material.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({super.key});

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff1A1A1A),
          toolbarHeight: 150.0,
          centerTitle: false,
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Welcome to",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "해냈조",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          bottom: const TabBar(
            labelPadding: EdgeInsets.all(16.0),
            indicatorPadding: EdgeInsets.all(16.0),
            labelColor: Color(0xff333333),
            unselectedLabelColor: Color(0xff999999),
            indicatorColor: Color(0xffF5F5F5),
            indicator: BoxDecoration(
              color: Color(0xffF5F5F5),
              borderRadius: BorderRadius.all(
                Radius.circular(26.0),
              ),
            ),
            tabs: [
              Tab(
                child: Text(
                  "TEAM",
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "MEMBER",
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            //TODO: 이곳에 팀소개 페이지를 연결해주세요.
            TestCard(
              backgroundColor: Color(0xff1A1A1A),
              emptyText: "팀소개 내용이 비어있어요.",
            ),
            //TODO: 이곳에 팀원소개 페이지를 연결해주세요.
            TestCard(
              backgroundColor: Color(0xff1A1A1A),
              emptyText: "팀원소개 내용이 비어있어요.",
            ),
          ],
        ),
      ),
    );
  }
}

/// - 내용이 합쳐지기 전까지 임시로 사용하는 더미 위젯입니다.
class TestCard extends StatelessWidget {
  const TestCard({
    Key? key,
    required this.backgroundColor,
    required this.emptyText,
  }) : super(key: key);

  final Color backgroundColor;
  final String emptyText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Text(
          emptyText,
          style: const TextStyle(
            color: Color(0xff999999),
            fontSize: 20.0,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}