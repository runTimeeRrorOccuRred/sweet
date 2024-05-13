import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sweetlifesaver/core/constants.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/component/help_Icon/helpicon.dart';
import 'package:sweetlifesaver/view/screens/auth/login/login_view_model.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/home_view.dart';

class DashboardView extends ConsumerStatefulWidget {
  const DashboardView({super.key});

  @override
  ConsumerState<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends ConsumerState<DashboardView>
    with BaseScreenView {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 100), () {
      ref.read(loginViewModelProvider).getUserData(context);
       FocusScope.of(context).unfocus();
    });

    super.initState();
  }

  List<Widget> pages = [
    const HomeView(),
    const HomeView(),
    const HomeView(),
    const HomeView(),
    const HomeView(),
  ];
  int selectedIndex = 2;
  String noimglink = AppConstants.noimglink;

  @override
  Widget build(BuildContext context) {
    // final UserProfileViewModel viewModel =
    //     ref.watch(userProfileViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kWhite,
        surfaceTintColor: kWhite,
        leading: Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: InkWell(
            onTap: () {
              context.pushNamed(AppRoute.userProfile.name);
            },
            child: ref.watch(loginViewModelProvider).isUserDataLoading
                ? CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 10.w,
                    child: const CircularProgressIndicator(
                      color: primaryColor,
                    ),
                  )
                : CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 20.w,
                    backgroundImage: NetworkImage(
                      ref
                              .watch(loginViewModelProvider)
                              .userDataRes
                              ?.data
                              ?.image ??
                          noimglink,
                    ),
                  ),
          ),
        ),
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              child: GestureDetector(
                onTap: () {
                  HapticFeedback.lightImpact();
                  context.pushNamed(AppRoute.paymentPlan.name);
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Image.asset(
                    "assets/icons/navigation/diamond.png",
                    height: 25.sp,
                  ),
                ),
              ),
            ),
            Flexible(
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(right: 35),
                  child: Image.asset(
                    'assets/icons/logo_lg.png',
                    height: 30.h,
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              HapticFeedback.lightImpact();
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset(
                "assets/icons/navigation/notification.png",
                height: 22.sp,
              ),
            ),
          ),
          gapW4,
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: const HelpIcon(
              color: primaryColor,
              iconName: HelpIconName.homePage,
            ),
          ),
        ],
      ),
      body: pages[0],
      bottomNavigationBar:  MediaQuery(
        data: const MediaQueryData(
        padding: EdgeInsets.only(bottom: 10),
       ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BottomNavigationBar(
              useLegacyColorScheme: false,
              backgroundColor: kWhite,
              // iconSize: 22,
              selectedItemColor: kGreen,
              unselectedItemColor: darkGrey,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedFontSize: 12.sp,
              unselectedFontSize: 12.sp,
              selectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.w700,
              ),
              type: BottomNavigationBarType.fixed,
              currentIndex: selectedIndex,
              onTap: (index) {
                HapticFeedback.selectionClick();
                setState(() {
                  selectedIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: SizedBox(
                    height: 35,
                    child: ImageIcon(
                      AssetImage('assets/icons/navigation/plan.png'),
                      // size: 22,
                    ),
                  ),
                  label: 'Plan',
                ),
                BottomNavigationBarItem(
                  icon: SizedBox(
                    height: 35,
                    child: ImageIcon(
                      AssetImage('assets/icons/navigation/track.png'),
                       size: 22,
                    ),
                  ),
                  label: 'Track',
                ),
                BottomNavigationBarItem(
                  icon: SizedBox(
                    height: 35,
                    child: ImageIcon(
                      AssetImage('assets/icons/navigation/home.png'),
                       size: 40,
                    ),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: SizedBox(
                    height: 35,
                    child: ImageIcon(
                      AssetImage('assets/icons/navigation/learn.png'),
                      size: 22,
                    ),
                  ),
                  label: 'Learn',
                ),
                BottomNavigationBarItem(
                  icon: SizedBox(
                    height: 35,
                    child: ImageIcon(
                      AssetImage('assets/icons/navigation/settings.png'),
                      // size: 22,
                    ),
                  ),
                  label: 'Settings',
                ),
              ],
            ),
            Container(color:Colors.white,height: 9.h,)
          ],
        ),
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.goNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // implement showSnackbar
  }
}
