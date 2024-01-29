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
    HomePageBody(),
    Discover(),
    NotificationScreen(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_currentIndex != 0) {
          setState(() {
            _currentIndex = 0;
          });
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: ClipOval(
          child: FloatingActionButton(
            child: Image.asset(ImageAssets.img22, height: 20, width: 20),
            backgroundColor: AppColors.primary,
            onPressed: () {},
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 5.0,
          color: Colors.white,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: IconButton(
                  icon: SvgPicture.asset(
                    SvgAssets.home,
                    color: _currentIndex == 0 ? AppColors.primary : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                  },
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: SvgPicture.asset(
                    SvgAssets.discover,
                    color: _currentIndex == 1 ? AppColors.primary : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                ),
              ),
              Spacer(),
              Expanded(
                child: IconButton(
                  icon: SvgPicture.asset(
                    SvgAssets.notify,
                    color: _currentIndex == 2 ? AppColors.primary : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _currentIndex = 2;
                    });
                  },
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: SvgPicture.asset(
                    SvgAssets.profile,
                    color: _currentIndex == 3 ? AppColors.primary : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _currentIndex = 3;
                    });
                  },
                ),
              ),
            ],
          ),
        ),

        body: _screens[_currentIndex],
      ),
    );
  }
}
