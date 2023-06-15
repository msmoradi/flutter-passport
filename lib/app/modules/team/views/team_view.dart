import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:passport/app/core/base/base_view.dart';
import 'package:passport/app/core/model/Item_data.dart';
import 'package:passport/app/core/widget/person_item.dart';
import 'package:passport/app/modules/team/controllers/team_controller.dart';

class TeamView extends BaseView<TeamController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Obx(() => _getView()),
      ),
    );
  }

  Widget _getView() {
    return controller.projectUiData.isEmpty
        ? Container()
        : ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
            itemCount: controller.projectUiData.length,
            itemBuilder: (context, index) {
              if (index == 0) {
                return ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(10.0),
                          right: Radius.circular(10.0),
                        ),
                      )),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_box_rounded,
                    color: Colors.green,
                  ),
                  label: const Text(
                    "افزودن فرد جدید",
                  ),
                );
              } else {
                return buildBody(context, controller.projectUiData[index]);
              }
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 16,
              );
            },
          );
  }

  Widget buildBody(BuildContext context, ItemData item) {
    return PersonItem(
      title: item.title,
      company: item.company,
      description: item.description,
      location: item.location,
      icon: item.icon,
      color: item.color,
      backgroundItem: item.backgroundItem,
    );
  }
}
