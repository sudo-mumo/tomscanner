import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationBarProvider>(context);
    void onItemTapped(int index) {
      setState(() {
        provider.setCurrentIndex = index;
      });
    }

    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.file_present_rounded),
          label: 'Files',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard_rounded),
          label: 'Tools',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_rounded),
          label: 'Account',
        ),
      ],
      currentIndex: provider.getCurrentIndex,
      selectedItemColor: Colors.amber[800],
      unselectedItemColor: Colors.blueGrey,
      showUnselectedLabels: true,
      onTap: onItemTapped,
    );
  }
}

class BottomNavigationBarProvider with ChangeNotifier {
  int _currentIndex = 0;

  get getCurrentIndex => _currentIndex;

  set setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
