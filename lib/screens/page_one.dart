import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../route/app_route_constants.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('this is Page One'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('this is Page One'),
              ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).pushNamed(AppRouteConstants.pageTwo);
                  },
                  child: Text('Go to Page Two')),
            ],
          ),
        ));
  }
}
