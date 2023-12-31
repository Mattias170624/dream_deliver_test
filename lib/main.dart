import 'package:get/get.dart';
import 'package:hub_test/routes/app_binding.dart';
import 'package:hub_test/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:hub_test/config/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const App(),
  );
}

/// We are using a StatefulWidget such that we only create the [Future] once,
/// no matter how many times our widget rebuild.
/// If we used a [StatelessWidget], in the event where [App] is rebuilt, that
/// would re-initialize FlutterFire and make our application re-enter loading state,
/// which is undesired.
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  /// The future is part of the state of our widget. We should not call `initializeApp`
  /// directly inside [build].
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: true,
      initialRoute: Routes.homeScreen,
      initialBinding: AppBinding(),
      getPages: pages,
      theme: appTheme,
    );
  }
}
