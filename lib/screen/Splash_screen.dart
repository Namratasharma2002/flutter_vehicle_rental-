
import 'package:flutter/material.dart';
import 'package:student_management_starter/features/auth/presentation/view/login_view.dart';
// import 'package:blog_app/app/screens/login_screen.dart';
// import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginView()));
//   @override
//   Widget build(BuildContext context) {
//     Future.delayed(const Duration(seconds: 5), () {
//       Navigator.pushReplacement(context,
//           MaterialPageRoute(builder: (context) => const LoginScreen()));

    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
//     });
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [

            Image.asset('assets/images/car.png'), 
//             Image.asset('assets/images/blog.jpeg'), 

            const SizedBox(height: 20),
//             const SizedBox(height: 20),

            const Text(
              "Wheel On and Go",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
//             const Text(
//               "Welcome to Blog To",
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 20),
//             const CircularProgressIndicator(),
//           ],
//         ),
//       ),
//     );
//   }
// }