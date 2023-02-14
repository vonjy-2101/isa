import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isa2/screens/devise/devise.state.dart';
import 'package:isa2/screens/home/home.state.dart';
import 'package:isa2/screens/letters_to_number/letters_to_number.state.dart';
import 'package:isa2/shared/app_constant.dart';
import 'package:isa2/shared/theme.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Layout extends StatefulWidget
{
    LayoutState createState() => LayoutState();
}

class LayoutState extends State<Layout>
{

    PersistentTabController _controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens(context) {
      return [
          Home(contextLayout: context,),
          Devise(contextLayout: context),
          LettersToNumber(contextLayout: context)
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(Icons.translate),
          title: (APPConstant.TRASLATE),
          activeColorPrimary: APPTHEMING.yellow,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.money),
          title: (APPConstant.DEVISE),
          activeColorPrimary: APPTHEMING.yellow,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.app_registration),
          title: (APPConstant.GUIDE),
          activeColorPrimary: APPTHEMING.yellow,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        )
      ];
    }

    @override
    Widget build(BuildContext context) {
        return PersistentTabView(
          context,
          controller: _controller,
          screens: _buildScreens(context),
            items: _navBarsItems(),
            confineInSafeArea: true,
            backgroundColor: Colors.white,
            handleAndroidBackButtonPress: true,
            resizeToAvoidBottomInset: true,
            stateManagement: false,
            hideNavigationBarWhenKeyboardShows: true,
            decoration: NavBarDecoration(
              borderRadius: BorderRadius.circular(0.0),
              colorBehindNavBar: Colors.white,
            ),
            popAllScreensOnTapOfSelectedTab: true,
            popActionScreens: PopActionScreensType.all,
            itemAnimationProperties: const ItemAnimationProperties(
              duration: Duration(milliseconds: 200),
              curve: Curves.ease,
            ),
            screenTransitionAnimation: const ScreenTransitionAnimation(
              animateTabTransition: true,
              curve: Curves.ease,
              duration: Duration(milliseconds: 200),
            ),
        );
    }

}