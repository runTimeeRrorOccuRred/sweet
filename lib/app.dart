// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:sweetlifesaver/providers/router_provider.dart';
import 'package:sweetlifesaver/providers/theme_provider.dart';
import 'package:sweetlifesaver/utils/utils.dart';

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(routerProvider);
    final themeManager = ref.watch(themeProvider);

    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return ShowCaseWidget(
          builder: Builder(
            builder: (context) => MaterialApp.router(
              routeInformationParser: goRouter.routeInformationParser,
              routerDelegate: goRouter.routerDelegate,
              routeInformationProvider: goRouter.routeInformationProvider,
              theme: AppThemes.lightTheme,
              // darkTheme: AppThemes.darkTheme,
              // themeMode: themeManager.currentTheme,
              debugShowCheckedModeBanner: false,
              builder: (context, child) {
                return MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
                  child: child!,
                );
              },
            ),
          ),
        );
      },
    );
  }
}
