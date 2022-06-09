import 'package:flutter/material.dart';
import 'package:flutter_mental_app/color_styles.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticon;
  final String text;
  const EmoticonFace({Key? key, required this.emoticon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: ColorStyles.secondaryColor,
              borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.all(12),
          child: Text(
            emoticon,
            style: const TextStyle(fontSize: 25),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(text, style: TextStyle(color: ColorStyles.accentColor))
      ],
    );
  }
}
