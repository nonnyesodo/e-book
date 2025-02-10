import 'package:ebook_task/features/home/presentation/bloc/cubit/home_cubit.dart';
import 'package:ebook_task/global_widget/export.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeCubit()),
      ],
      child: ScreenUtilInit(
          designSize: MediaQuery.sizeOf(context),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp.router(
                routerConfig: AppRoute.router,
                debugShowCheckedModeBanner: false,
                title: 'E-book',
                builder: (context, child) {
                  return MediaQuery(
                      data: MediaQuery.of(context)
                          .copyWith(textScaler: const TextScaler.linear(1.0)),
                      child: child!);
                });
          }),
    );
  }
}
