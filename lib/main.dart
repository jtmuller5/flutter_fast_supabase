import 'package:flutter/material.dart';
import 'package:flutter_fast_supabase/app/router.dart';
import 'package:flutter_fast_supabase/app/services.dart';
import 'package:flutter_fast_supabase/features/shared/navigation/basic_navigation_observer.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: const String.fromEnvironment('SUPABASE_URL'),
    anonKey: const String.fromEnvironment('SUPABASE_ANON_KEY'),
  );

  GetIt.instance.registerSingleton(AppRouter());

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router.config(
        navigatorObservers: () => [
          BasicObserver(),
        ],
      ),
    );
  }
}
