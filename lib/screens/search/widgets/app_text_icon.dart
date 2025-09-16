import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class AppTextIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppTextIcon({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.90,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(icon, color: AppStyles.planeColor),
          const SizedBox(width: 10),
          Text(text, style: AppStyles.textStyle),
        ],
      ),
    );
  }
}
