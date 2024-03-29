import 'package:quotes_app/headers.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void changeScreen(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacementNamed(
          AppRoutes.quotepage,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    changeScreen(context);

    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(
                "assets/images/SplashScreen/splash.gif",
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xffF4EEE0),
    );
  }
}
