import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nerpogram1/sign_in_page.dart';
import 'package:nerpogram1/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NerpoGram',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: SignInPage(),
    );
  }
}
