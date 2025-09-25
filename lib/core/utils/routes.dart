import 'package:doctor_hunt/features/onBoarding/presentation/view/onBoreding_screen.dart';
import 'package:doctor_hunt/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kOnBoardingScreen = '/onBoarding';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
        path: kOnBoardingScreen,
        builder: (context, state) => const OnboredingScreen(),
      ),
    ],
  );
}
