import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:passport/app/core/custom_icons.dart';
import 'package:passport/app/modules/about/views/about_view.dart';
import 'package:passport/app/modules/achievement/views/achievement_view.dart';
import 'package:passport/app/modules/home/controllers/home_controller.dart';
import 'package:passport/app/modules/team/views/team_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(CustomIcons.user),
                text: "درباره مشاور",
                iconMargin: EdgeInsets.all(6),
              ),
              Tab(
                icon: Icon(CustomIcons.cup),
                text: "سوابق و افتخارات",
                iconMargin: EdgeInsets.all(6),
              ),
              Tab(
                icon: Icon(CustomIcons.people),
                text: "تیم ما",
                iconMargin: EdgeInsets.all(6),
              ),
            ],
          ),
          title: const Text('تکمیل پروفایل مشاور'),
        ),
        backgroundColor: Colors.amber,
        body: TabBarView(
          children: [
            AboutView(),
            AchievementView(),
            TeamView(),
          ],
        ),
      ),
    );
  }
}
