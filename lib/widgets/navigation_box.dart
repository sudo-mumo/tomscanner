import 'package:flutter/material.dart';
import 'package:tomscanner/widgets/navigation_card.dart';

class NavBox extends StatelessWidget {
  const NavBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Widget>[
            NavCard(
              menuIconPath: "assets/images/scan.png",
              title: "Scan",
            ),
            NavCard(
              menuIconPath: "assets/images/pdf.png",
              title: "PDF Tools",
            ),
            NavCard(
              menuIconPath: "assets/images/image.png",
              title: "Import Images",
            ),
            NavCard(
              menuIconPath: "assets/images/import.png",
              title: "Import Files",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Widget>[
            NavCard(
              menuIconPath: "assets/images/card.png",
              title: "ID Card",
            ),
            NavCard(
              menuIconPath: "assets/images/text.png",
              title: "To Text",
            ),
            NavCard(
              menuIconPath: "assets/images/magic-wand.png",
              title: "Enhance",
            ),
            NavCard(
              menuIconPath: "assets/images/application.png",
              title: "All",
            ),
          ],
        ),
      ],
    );
  }
}
