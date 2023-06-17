import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:passport/app/modules/about/day_model.dart';

class DayItem extends StatefulWidget {
  final DayModel model;
  final Function(bool) onSelectChanged;

  const DayItem(
      {super.key, required this.model, required this.onSelectChanged});

  @override
  State<DayItem> createState() => _DayItemState();
}

class _DayItemState extends State<DayItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CheckboxMenuButton(
                value: isSelected,
                onChanged: (value) {
                  setState(() {
                    isSelected = value!;
                  });
                  widget.onSelectChanged(value!);
                },
                child: Text(widget.model.title),
              ),
              Text(widget.model.isOpen ? "باز است" : "بسته"),
            ],
          ),
          if (isSelected)
            Column(
              children: [
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: _clock("از ساعت", "۹:۰۰"),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: _clock("تا ساعت", "۱۸:۳۰"),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      minimumSize: const Size.fromHeight(50), // NEW
                    ),
                    onPressed: null,
                    child: const Text("۲۴ ساعته باز است"))
              ],
            )
        ]),
      ),
    );
  }

  Widget _clock(String title, String time) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(time),
              ),
            ),
          )
        ],
      );
}
