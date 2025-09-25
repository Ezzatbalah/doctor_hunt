import 'package:doctor_hunt/features/onBoarding/presentation/view/onBoreding_screen.dart';
import 'package:doctor_hunt/features/onBoarding/presentation/view/sceoned_bording.dart';
import 'package:doctor_hunt/features/onBoarding/presentation/view/therd_onBording.dart';
import 'package:doctor_hunt/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kOnBoardingScreen = '/onBoarding';
  static const kOnBoardingScreen2 = '/onBoarding2';
  static const kOnBoardingScreen3 = '/onBoarding3';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
        path: kOnBoardingScreen,
        builder: (context, state) => const OnboredingScreen(),
      ),
      GoRoute(
        path: kOnBoardingScreen2,
        builder: (context, state) => const SceonedBording(),
      ),
      GoRoute(
        path: kOnBoardingScreen3,
        builder: (context, state) => const TherdOnboredingScreen(),
      ),
    ],
  );
}
