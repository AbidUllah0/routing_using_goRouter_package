import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../route/app_route_constants.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('this is Page two'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('this is Page Two'),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).pushNamed(AppRouteConstants.pageThree);
              },
              child: Text('Go to Page Three'),
            ),
          ],
        ),
      ),
    );
  }
}
