
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_management_starter/app/navigator/navigator.dart';
import 'package:student_management_starter/features/auth/presentation/navigator/login_navigator.dart';
import 'package:student_management_starter/features/auth/presentation/view/register_view.dart';

final registerViewNavigatorProvider =
    Provider((ref) => RegisterViewNavigator());

class RegisterViewNavigator with LoginViewRoute {}

// Anyone who want to call register view
mixin RegisterViewRoute {
  openRegisterView() {
    NavigateRoute.pushRoute(const RegisterView());
  }
}