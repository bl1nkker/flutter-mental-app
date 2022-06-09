import 'package:flutter/material.dart';
import 'package:flutter_mental_app/color_styles.dart';

class ExerciseTile extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subtitle;
  const ExerciseTile(
      {Key? key,
      required this.icon,
      required this.title,
      required this.iconColor,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: ColorStyles.accentColor,
            borderRadius: BorderRadius.circular(16)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                  padding: const EdgeInsets.all(16),
                  color: iconColor,
                  child: Icon(icon, color: ColorStyles.accentColor)),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(subtitle,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
            const Icon(Icons.more_horiz)
          ],
        ));
  }
}
