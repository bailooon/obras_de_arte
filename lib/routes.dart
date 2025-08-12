import 'package:flutter/material.dart';
import 'package:obras_de_arte/screens/detail/artwork_detail_screen.dart';
import 'package:obras_de_arte/screens/home/home_screen.dart';
import 'package:obras_de_arte/screens/intro/intro_screen.dart';
import 'package:obras_de_arte/screens/splash/splash_screen.dart';

class Routes {
  static const String splash = '/';
  static const String intro = '/intro';
  static const String home = '/home';
  static const String detail = '/detail';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case intro:
        return MaterialPageRoute(builder: (_) => IntroScreen());
      case home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case detail:
        final args = settings.arguments as ArtworkDetailScreenArguments;
        return MaterialPageRoute(
          builder: (_) => ArtworkDetailScreen(artwork: args.artwork),
        );
      default:
        return MaterialPageRoute(
          builder:
              (_) =>
                  Scaffold(body: Center(child: Text('Rota não encontrada!'))),
        );
    }
  }
}

class ArtworkDetailScreenArguments {
  final Artwork artwork;
  ArtworkDetailScreenArguments(this.artwork);
}
