import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_best_code/route/app_route_constants.dart';
import 'package:go_router_best_code/screens/error_page.dart';
import 'package:go_router_best_code/screens/home_screen.dart';
import 'package:go_router_best_code/screens/page_four.dart';
import 'package:go_router_best_code/screens/page_one.dart';
import 'package:go_router_best_code/screens/page_three.dart';
import 'package:go_router_best_code/screens/page_two.dart';

class MyAppRouter {
  GoRouter router = GoRouter(
      routes: [
        ///first route
        GoRoute(
          // name: 'page_one',
          name: AppRouteConstants.homeScreen,

          ///this is initial route
          path: '/',
          builder: (context, state) {
            return HomeScreen();
          },
        ),

        ///second route
        GoRoute(
          // name: 'page_one',
          name: AppRouteConstants.pageOne,

          ///this is initial route
          path: '/page_one',
          builder: (context, state) {
            return PageOne();
          },
        ),

        /// second route
        GoRoute(
          name: AppRouteConstants.pageTwo,
          path: '/page_two',
          builder: (context, state) {
            return PageTwo();
          },
        ),

        /// third route
        GoRoute(
          name: AppRouteConstants.pageThree,
          path: '/page_three/:text1/:text2/:text3',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: PageThree(
                text1: state.params['text1']!,
                text2: state.params['text2']!,
                text3: state.params['text3']!,
              ),
            );
          },
        ),

        ///forth route
        GoRoute(
          name: AppRouteConstants.pageFour,
          path: '/page_four',
          pageBuilder: (context, state) {
            return MaterialPage(
              child: PageFour(),
            );
          },
        ),
      ],
      errorPageBuilder: (context, state) {
        return MaterialPage(
          child: ErrorPage(),
        );
      });
}
