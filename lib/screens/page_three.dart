import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../route/app_route_constants.dart';

class PageThree extends StatelessWidget {
  String text1;
  String text2;
  String text3;

  PageThree({required this.text1, required this.text2, required this.text3});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('this is Page three'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('this is Page three'),
              Text('this is text 1 : ${text1}'),
              Text('this is text 2 : ${text2}'),
              Text('this is text 3 : ${text3}'),
              ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).pushNamed(AppRouteConstants.pageFour);
                  },
                  child: Text('Go to Page Four')),
            ],
          ),
        ));
  }
}
