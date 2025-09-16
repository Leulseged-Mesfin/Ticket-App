import 'package:flutter/cupertino.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class AppColoumTextLayout extends StatelessWidget {
  final String bigText;
  final String smallText;
  final CrossAxisAlignment crossAxisAlignment;
  const AppColoumTextLayout({super.key, required this.bigText, required this.smallText, required this.crossAxisAlignment
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        TextStyleThird(text: bigText),
        SizedBox(height: 5,),
        TextStyleFourth(text: smallText),
      ],
    );
  }
}
