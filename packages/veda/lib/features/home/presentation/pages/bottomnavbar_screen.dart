import 'package:flutter/material.dart';
import 'package:veda/features/home/presentation/pages/home_screen.dart';
import 'package:veda_components/veda_componenets.dart';
import 'package:veda_resources/veda_resources.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedIndex = 0;
  static const List<Widget> screens = <Widget>[
    HomeScreen(),
    Center(
      child: Text(
        'Search',
      ),
    ),
    Center(
      child: Text('Search'),
    ),
    Center(
      child: Text(
        'Chats',
      ),
    ),
    Center(
      child: Text(
        'Profile',
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      extendBody: true,
      // backgroundColor: Colors.black12,
      bottomNavigationBar: SizedBox(
        height: screenHeight(context) / 15,
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Picture(
                source: Asset.footer.home,
                height: 14,
                fit: BoxFit.fill,
              ),
              label: '',
              backgroundColor: Colors.black.withOpacity(0.4),
            ),
            BottomNavigationBarItem(
              icon: Picture(
                source: Asset.footer.search,
                height: 14,
              ),
              label: '',
              backgroundColor: Colors.black.withOpacity(0.4),
            ),
            BottomNavigationBarItem(
              icon: Picture(
                source: Asset.footer.add,
                height: 16,
              ),
              label: '',
              backgroundColor: Colors.black.withOpacity(0.4),
            ),
            BottomNavigationBarItem(
              icon: Picture(
                source: Asset.footer.chat,
                height: 16,
              ),
              label: '',
              backgroundColor: Colors.black.withOpacity(0.4),
            ),
            BottomNavigationBarItem(
              icon: Picture(
                source: Asset.footer.profile,
                height: 16,
              ),
              label: '',
              backgroundColor: Colors.black.withOpacity(0.4),
            )
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
