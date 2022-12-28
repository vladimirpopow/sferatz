import 'package:sferatz/login/login_view.dart';
import 'package:sferatz/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'login/auth_controller.dart';
import 'login/jwt.dart';
import 'package:sferatz/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()),);
  runApp( MyApp());
}



// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await firebaseInitialization.then((value) {
//     Get.put(AuthController());
//   });
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData.dark(),
//       // we don't really have to put the home page here
//       // GetX is going to navigate the user and clear the navigation stack
//       home: const CircularProgressIndicator(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Authentication Manager',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: SplashView(),
    );
  }
}