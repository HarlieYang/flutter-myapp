import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './page/tabs.dart';
import './page/search.dart';
import './page/list.dart';
import './page/appbardemo.dart';
import './page/tabbarcontrl.dart';
import './page/button.dart';
// form
import './page/form/formpage.dart';
import './page/form/textField.dart';
import './page/form/checkbox.dart';
import './page/form/radio.dart';
import './page/form/demo.dart';
// func
import './page/func/index.dart';
import './page/func/time.dart';
import './page/func/timemain.dart';
import './page/func/timenet.dart';
import './page/func/swiper.dart';
import './page/func/alert.dart';
// api
import './page/api/index.dart';
import './page/api/dio.dart';

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
    '/formdemo': (context, {arguments}) => FormDemoPage(arguments: arguments),
    '/funcpage': (context) => FuncPage(),
    '/timepage': (context) => TimePage(),
    '/timemain': (context) => TimeMainPage(),
    '/timenet': (context) => TimeNetPage(),
    '/swiper': (context) => SwiperPage(),
    '/alert': (context) => AlertPage(),
    '/api': (context) => ApiPage(),
    '/dio': (context) => DioPage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        //此处
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        //此处
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],
      locale: Locale("zh"), //  非必需
      home: Tabs(currentIndex: 0),
      // routes: {
      //   '/search': (context) => Search(),
      //   '/list': (context) => List(),
      // },
      initialRoute: '/dio',
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
