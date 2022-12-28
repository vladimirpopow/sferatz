import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../home_view.dart';
import 'login_view.dart';
import 'model/login_request_model.dart';

class AuthController extends GetxController{
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady(){
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }


_initialScreen(User? user){
  if(user==null){
    print("login page");
    Get.offAll(()=>LoginView());
    }else{
      Get.offAll(()=>HomeView());
    }
  }


}