import 'package:flutter/material.dart';
import 'package:passport/app/core/base/base_view.dart';
import 'package:passport/app/modules/about/controllers/about_controller.dart';
import 'package:passport/app/modules/about/day_model.dart';
import 'package:passport/app/modules/about/views/day_item.dart';

class AboutView extends BaseView<AboutController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _getView(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      controller.onSaveDataClicked();
                    },
                    child: const Text("ذخیره"))),
            const SizedBox(
              width: 16,
            ),
            Expanded(
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("انصراف"))),
          ],
        ),
      ),
    );
  }

  Widget _getView() {
    return ListView.separated(
      shrinkWrap: false,
      padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
      itemCount: 7,
      itemBuilder: (context, index) {
        return buildBody(context, index);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 16,
        );
      },
    );
  }

  Widget buildBody(BuildContext context, int index) {
    DayModel model = controller.days[index];
    return DayItem(
      model: model,
      onSelectChanged: (state) {
        controller.days[index].isSelected = state;
      },
    );
  }
}
