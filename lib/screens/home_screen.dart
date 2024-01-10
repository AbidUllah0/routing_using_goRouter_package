import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_best_code/route/app_route_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('this is home page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('this is home Page'),
            ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).pushNamed(AppRouteConstants.pageOne);
                },
                child: Text('Go to Page One')),
            ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).pushNamed(AppRouteConstants.pageOne);
                },
                child: Text('Go to Page two')),
            ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).pushNamed(
                    AppRouteConstants.pageThree,
                    params: {
                      'text1': 'Abid',
                      'text2': 'khan',
                      'text3': 'hdghgs',
                    },
                  );
                },
                child: Text('Go to Page three')),
            ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).pushNamed(AppRouteConstants.pageFour);
                },
                child: Text('Go to Page four')),
          ],
        ),
      ),
    );
  }
}
