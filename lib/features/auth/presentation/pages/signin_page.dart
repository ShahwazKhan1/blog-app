import 'package:blog_app/core/theme/app_colors.';
import 'package:blog_app/features/auth/presentation/pages/signup_page.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const SigninPage());
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();
@override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Sign In',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50
                ),),
                const SizedBox(height: 15,),
                 AuthField(hintText: 'Email', controller: emailController),
                const SizedBox(height: 15,),
                 AuthField(hintText: 'password',
                controller: passwordController,
                isObscureText: true),
                const SizedBox(height: 20,),
                const AuthGradientButton(buttonText: 'Sign In',),
                const SizedBox(height: 40,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, SignUpPage.route());
                  },
                  child: RichText(text: 
                    const TextSpan(text: "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 18
                    ),
                    children: [TextSpan(text: 'Sign Up',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.gradient2
                    ))]
                    )
                    ),
                )
              ],
            ),
          ),
        ),
    );
  }
}