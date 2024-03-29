import 'package:quotes_app/headers.dart';

class AppRoutes {
  static String splashScreen = '/';
  static String homePage = 'home_page';
  static String quotepage = 'quote_page';
  static String detailpage = 'detail_page';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => const SplashScreen(),
    homePage: (context) => const HomePage(),
    quotepage: (context) => const QuotePage(),
    detailpage: (context) => const DetailPage(),
  };
}
