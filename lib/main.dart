import 'package:eat24/view/screens/splash/splash_screen.dart';
import 'package:eat24/view_model/main_page_view_model.dart';
import 'package:eat24/view_model/signin_view_model.dart';
import 'package:eat24/view_model/signup_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> MainPageViewModel()),
        ChangeNotifierProvider(create: (context)=> SigninViewModel()),
        ChangeNotifierProvider(create: (context)=> SignupViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 0, color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),  
      ),
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
