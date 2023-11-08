import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:macber_task/Core/routes/routes.dart';
import 'package:macber_task/Core/theme/app_theme.dart';
import 'package:macber_task/Features/MoviesDetails/Presentation/cubit/casts_cubit.dart';
import './Core/DependencyInjection/di.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        return SafeArea(
          child: BlocProvider(
            create: (context) => di.getIt<CastsCubit>(),
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              onGenerateRoute: OnPageRoute.generateRoute,
              initialRoute: '/',
              theme: AppTheme.appTheme,
            ),
          ),
        );
      },
    );
  }
}
