import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PersonItem extends StatelessWidget {
  final String title;

  final String company;

  final String description;

  final String location;

  final String icon;
  final String color;

  final String backgroundItem;

  const PersonItem({
    super.key,
    required this.title,
    required this.company,
    required this.description,
    required this.location,
    required this.icon,
    required this.color,
    required this.backgroundItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          children: [
            SvgPicture.network(
              icon,
              width: 54,
              height: 54,
              fit: BoxFit.cover,
              placeholderBuilder: (BuildContext context) => Container(
                  padding: const EdgeInsets.all(8.0),
                  child: const CircularProgressIndicator()),
            ),
            const SizedBox(
              width: 14,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.black),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        company,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.grey),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_month_outlined,
                        color: Colors.grey,
                        size: 12,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: Text(
                          description,
                          maxLines: 1,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                        size: 12,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        location,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            const Icon(
              Icons.edit_outlined,
              size: 20.0,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
