import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_management_starter/app/navigator/navigator.dart';
import 'package:student_management_starter/features/auth/presentation/navigator/register_nevigator.dart';
import 'package:student_management_starter/features/auth/presentation/view/login_view.dart';

final loginViewNavigatorProvider= Provider((ref) => LoginViewNavigator());

class LoginViewNavigator with RegisterViewRoute{
  void openHomeView() {}
}

mixin LoginViewRoute{
  openLoginView(){
    NavigateRoute.pushRoute(const LoginView());
  }
}

