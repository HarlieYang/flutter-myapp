import 'package:flutter/material.dart';
import './page/tabs.dart';
import './page/search.dart';
import './page/list.dart';
import './page/appbardemo.dart';
import './page/tabbarcontrl.dart';
import './page/button.dart';
import './page/form/formpage.dart';
import './page/form/textField.dart';
import './page/form/checkbox.dart';
import './page/form/radio.dart';
import './page/form/demo.dart';

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  Map routes = {
    '/search': (context, {arguments}) => Search(arguments: arguments),
    '/list': (context, {arguments}) => List(arguments: arguments),
    '/appbardemo': (context, {arguments}) =>
        AppbarDemoPage(arguments: arguments),
    '/tabbarcontrl': (context) => TabBarControllPage(),
    '/ButtonDemo': (context) => ButtonDemo(),
    '/textField': (context) => TextFiledPage(),
    '/checkbox': (context) => CheckboxPage(),
    '/radiobox': (context) => RadioPage(),
    '/formpage': (context) => FormPage(),
    '/formdemo': (context, {arguments}) => FormDemoPage(arguments: arguments)
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(currentIndex: 0),
      // routes: {
      //   '/search': (context) => Search(),
      //   '/list': (context) => List(),
      // },
      initialRoute: '/formdemo',
      onGenerateRoute: (RouteSettings settings) {
        final name = settings.name;
        final Function pageContentBuilder = this.routes[name];
        print('pageContentBuilder$pageContentBuilder');

        Route route = MaterialPageRoute(
          builder: (context) {
            return pageContentBuilder(context);
          },
        );
        ;
        if (pageContentBuilder != null) {
          if (settings.arguments != null) {
            route = MaterialPageRoute(
              builder: (context) {
                return pageContentBuilder(context,
                    arguments: settings.arguments);
              },
            );
          }
        }
        return route;
      },
    );
  }
}

main() {
  runApp(MyApp());
}
