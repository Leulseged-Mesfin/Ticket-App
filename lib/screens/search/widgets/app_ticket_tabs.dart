import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xFFF4F6FD),
          ),
          child: Row(
            children: [
            AppTabs(tabText: firstTab, tabBorder: true, textColor: true),
            AppTabs(tabText: secondTab, tabBorder: false, textColor: false)
            
            ]
            ),
        );
  }
}


class AppTabs extends StatelessWidget {
  final String tabText;
  final bool tabBorder;
  final bool textColor;
  const AppTabs({super.key, required this.tabText, required this.tabBorder, required this.textColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
              width: size.width * 0.44,
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Center(child: Text(tabText)),
              decoration: BoxDecoration(
                color: textColor?Colors.white:Colors.transparent,
                borderRadius: tabBorder?BorderRadius.horizontal(left: Radius.circular(50)):BorderRadius.horizontal(right: Radius.circular(50)),
              ),
              );
  }
}