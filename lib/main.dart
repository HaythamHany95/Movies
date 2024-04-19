import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movies/bloc_observer.dart';
import 'package:movies/networking/di/di.dart';
import 'package:movies/networking/models/watch_list.dart';
import 'package:movies/shared/string_constants.dart';
import 'package:movies/ui/utils/app_routes.dart';
import 'package:movies/ui/utils/app_theme.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(WatchListAdapter());
  await Hive.openBox<WatchList>(AppStringConstants.watchListBox);

  await setUpSetIt();
  Bloc.observer = MyBlocObserver();
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
        onGenerateRoute: AppRoutes.generateRoute,
        initialRoute: AppRoutes.homeScreen,
          //routes: appRoutes,
      ),
    );
  }
}
