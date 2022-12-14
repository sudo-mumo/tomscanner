import 'package:flutter/material.dart';

class NavCard extends StatelessWidget {
  final String menuIconPath;
  final String title;
  const NavCard({super.key, required this.menuIconPath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: SizedBox(
        height: 75,
        width: 75,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            SizedBox(
              height: 28,
              width: 28,
              child: ImageIcon(
                AssetImage(menuIconPath),
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 18,
              width: double.infinity,
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 12.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
