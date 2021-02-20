import 'package:flutter/material.dart';
import './page/tabs.dart';
import './page/search.dart';
import './page/list.dart';

class MyApp extends StatelessWidget {
  Map routes = {
    '/search': (context, {arguments}) => Search(arguments: arguments),
    '/list': (context, {arguments}) => List(arguments: arguments),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      // routes: {
      //   '/search': (context) => Search(),
      //   '/list': (context) => List(),
      // },
      onGenerateRoute: (RouteSettings settings) {
        final name = settings.name;
        final Function pageContentBuilder = this.routes[name];
        Route route;
        if (pageContentBuilder != null) {
          if (settings.arguments != null) {
            route = MaterialPageRoute(
              builder: (context) {
                return pageContentBuilder(context,
                    arguments: settings.arguments);
              },
            );
          }
        } else {
          route = MaterialPageRoute(
            builder: (context) {
              return pageContentBuilder(context);
            },
          );
        }
        return route;
      },
    );
  }
}

main() {
  runApp(MyApp());
}
