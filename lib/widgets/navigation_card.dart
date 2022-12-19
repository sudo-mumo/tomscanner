import 'package:flutter/material.dart';

class NavCard extends StatelessWidget {
  final String menuIconPath;
  final String title;
  const NavCard({super.key, required this.menuIconPath, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        color: const Color.fromARGB(181, 253, 253, 253),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: SizedBox(
          height: 72,
          width: 72,
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
      ),
    );
  }
}
