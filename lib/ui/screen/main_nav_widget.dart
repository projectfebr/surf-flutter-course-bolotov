import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/resources/resources.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/screen/visiting_screen.dart';
import 'package:places/utils/app_color.dart';

// Экран с bottomTabNavigator.
class MainNavigationWidget extends StatefulWidget {
  const MainNavigationWidget({Key? key}) : super(key: key);

  @override
  _MainNavigationWidgetState createState() => _MainNavigationWidgetState();
}

class _MainNavigationWidgetState extends State<MainNavigationWidget>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: const [
          SightListScreen(),
          Text('data'),
          VisitingScreen(),
          Text('data'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabController.index,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            tabController.index = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              Svgs.list,
              width: 24,
              height: 24,
              color: AppColor.activGreyButtonColor,
            ),
            activeIcon: SvgPicture.asset(
              Svgs.listFull,
              width: 24,
              height: 24,
              color: AppColor.kVisitScreenMainColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              Svgs.map,
              width: 24,
              height: 24,
              color: AppColor.activGreyButtonColor,
            ),
            activeIcon: SvgPicture.asset(
              Svgs.mapFull,
              width: 24,
              height: 24,
              color: AppColor.kVisitScreenMainColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              Svgs.heart,
              width: 24,
              height: 24,
              color: AppColor.activGreyButtonColor,
            ),
            activeIcon: SvgPicture.asset(
              Svgs.heartFull,
              width: 24,
              height: 24,
              color: AppColor.kVisitScreenMainColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              Svgs.settings,
              width: 24,
              height: 24,
              color: AppColor.activGreyButtonColor,
            ),
            activeIcon: SvgPicture.asset(
              Svgs.settingsFill,
              width: 24,
              height: 24,
              color: AppColor.kVisitScreenMainColor,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
