import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/feature/setting/bloc/app_cubit.dart';
import 'package:foodie/feature/setting/bloc/app_state.dart';
import 'package:foodie/core/injection.dart';
import 'package:foodie/core/router/router.dart';
import 'package:foodie/core/data/share_pref.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/core/util/notification.dart';
import 'package:foodie/firebase_options.dart';
import 'package:foodie/generated/l10n.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:foodie/core/injection.dart' as di;

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  try {
    debugPrint('Handling a background message ${message.data}');
    if (message.data.isNotEmpty) {
      if (message.data['title'] != null && message.data['content'] != null) {
        final setNewNoti = await SharedPref.setNewNotificationAlert(true);
        debugPrint('set new notification alert $setNewNoti');
        LocalNotificationHelper.handleNotificationSetting(
          message.data['title'],
          message.data['content'],
        );
      }
    }
  } catch (e) {
    debugPrint('Handling a background message error $e');
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  SharedPref.prefs = await SharedPreferences.getInstance();
  await di.init();
  bool? initNoti = await LocalNotificationHelper.initNotificationLocal();
  debugPrint('init notification $initNoti');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AppCubit>()
        ..loadCurrentLanguage()
        ..setNotificationSetting()
        ..initNotificationsFirebase(
          backgroundNoti: firebaseMessagingBackgroundHandler,
        ),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return ScreenUtilInit(
            designSize: const Size(390, 844),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                title: 'Foodie',
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate
                ],
                locale: Locale(state.languageCode),
                supportedLocales: S.delegate.supportedLocales,
                theme: ThemeData(
                  colorScheme: ColorScheme.fromSeed(
                    seedColor: '#FF6B00'.toColor(),
                  ),
                  textTheme: GoogleFonts.montserratTextTheme(
                    Theme.of(context).textTheme,
                  ),
                  useMaterial3: true,
                ),
                routeInformationParser: router.routeInformationParser,
                routerDelegate: router.routerDelegate,
                routeInformationProvider: router.routeInformationProvider,
              );
            },
          );
        },
      ),
    );
  }
}
