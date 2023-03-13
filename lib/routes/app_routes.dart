import 'package:zero_degree_lab_s_calculator/presentation/welcome_screen/welcome_screen.dart';
import 'package:zero_degree_lab_s_calculator/presentation/welcome_screen/binding/welcome_binding.dart';
import 'package:zero_degree_lab_s_calculator/presentation/login_screen/login_screen.dart';
import 'package:zero_degree_lab_s_calculator/presentation/login_screen/binding/login_binding.dart';
import 'package:zero_degree_lab_s_calculator/presentation/home_container_screen/home_container_screen.dart';
import 'package:zero_degree_lab_s_calculator/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:zero_degree_lab_s_calculator/presentation/dash_board_screen/dash_board_screen.dart';
import 'package:zero_degree_lab_s_calculator/presentation/dash_board_screen/binding/dash_board_binding.dart';
import 'package:zero_degree_lab_s_calculator/presentation/currencies_trading_two_screen/currencies_trading_two_screen.dart';
import 'package:zero_degree_lab_s_calculator/presentation/currencies_trading_two_screen/binding/currencies_trading_two_binding.dart';
import 'package:zero_degree_lab_s_calculator/presentation/currencies_trading_screen/currencies_trading_screen.dart';
import 'package:zero_degree_lab_s_calculator/presentation/currencies_trading_screen/binding/currencies_trading_binding.dart';
import 'package:zero_degree_lab_s_calculator/presentation/currencies_trading_one_screen/currencies_trading_one_screen.dart';
import 'package:zero_degree_lab_s_calculator/presentation/currencies_trading_one_screen/binding/currencies_trading_one_binding.dart';
import 'package:zero_degree_lab_s_calculator/presentation/portfolio_one_screen/portfolio_one_screen.dart';
import 'package:zero_degree_lab_s_calculator/presentation/portfolio_one_screen/binding/portfolio_one_binding.dart';
import 'package:zero_degree_lab_s_calculator/presentation/load_funds_screen/load_funds_screen.dart';
import 'package:zero_degree_lab_s_calculator/presentation/load_funds_screen/binding/load_funds_binding.dart';
import 'package:zero_degree_lab_s_calculator/presentation/portfolio_screen/portfolio_screen.dart';
import 'package:zero_degree_lab_s_calculator/presentation/portfolio_screen/binding/portfolio_binding.dart';
import 'package:zero_degree_lab_s_calculator/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:zero_degree_lab_s_calculator/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';

  static const String loginScreen = '/login_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String dashBoardScreen = '/dash_board_screen';

  static const String currenciesTradingTwoScreen =
      '/currencies_trading_two_screen';

  static const String currenciesTradingScreen = '/currencies_trading_screen';

  static const String currenciesTradingOneScreen =
      '/currencies_trading_one_screen';

  static const String portfolioOneScreen = '/portfolio_one_screen';

  static const String loadFundsScreen = '/load_funds_screen';

  static const String portfolioScreen = '/portfolio_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: dashBoardScreen,
      page: () => DashBoardScreen(),
      bindings: [
        DashBoardBinding(),
      ],
    ),
    GetPage(
      name: currenciesTradingTwoScreen,
      page: () => CurrenciesTradingTwoScreen(),
      bindings: [
        CurrenciesTradingTwoBinding(),
      ],
    ),
    GetPage(
      name: currenciesTradingScreen,
      page: () => CurrenciesTradingScreen(),
      bindings: [
        CurrenciesTradingBinding(),
      ],
    ),
    GetPage(
      name: currenciesTradingOneScreen,
      page: () => CurrenciesTradingOneScreen(),
      bindings: [
        CurrenciesTradingOneBinding(),
      ],
    ),
    GetPage(
      name: portfolioOneScreen,
      page: () => PortfolioOneScreen(),
      bindings: [
        PortfolioOneBinding(),
      ],
    ),
    GetPage(
      name: loadFundsScreen,
      page: () => LoadFundsScreen(),
      bindings: [
        LoadFundsBinding(),
      ],
    ),
    GetPage(
      name: portfolioScreen,
      page: () => PortfolioScreen(),
      bindings: [
        PortfolioBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
      ],
    )
  ];
}
