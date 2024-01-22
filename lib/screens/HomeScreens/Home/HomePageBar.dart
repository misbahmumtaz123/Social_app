import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_app/config/colors.dart';
import '../../../config/assets.dart';
import '../Discovery/Discover.dart';
import 'Homepage.dart';
import '../Notification/Notification.dart';
import '../Profile/Profile.dart';
class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomePage(),
    Discover(),
    NotificationScreen(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        floatingActionButton: ClipOval(
          child: FloatingActionButton(
            child: Image.asset(ImageAssets.img22, height: 20, width: 20),
            backgroundColor: AppColors.primary,
            onPressed: () {},
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                SvgAssets.home,
                color: _currentIndex == 0 ? AppColors.primary : Colors.grey,
              ),
              label: '', // Remove label
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                SvgAssets.discover,
                color: _currentIndex == 1 ? AppColors.primary : Colors.grey,
              ),
              label: '', // Remove label
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                SvgAssets.notify,
                color: _currentIndex == 2 ? AppColors.primary : Colors.grey,
              ),
              label: '', // Remove label
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                SvgAssets.profile,
                color: _currentIndex == 3 ? AppColors.primary : Colors.grey,
              ),
              label: '', // Remove label
            ),
          ],
        ),
        body: _screens[_currentIndex],

    );
  }
}
