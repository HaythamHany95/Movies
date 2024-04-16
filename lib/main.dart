import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/core/di.dart';
import 'package:movies/ui/screens/home/home_screen.dart';
import 'package:movies/ui/utils/app_routes.dart';
import 'package:movies/ui/utils/app_theme.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await setUpSetIt();
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 892),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.appTheme,
          initialRoute: HomeScreen.routeName,
          routes: appRoutes,
      ),
    );
  }
}
