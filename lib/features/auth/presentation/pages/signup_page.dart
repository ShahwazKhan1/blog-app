import 'package:blog_app/core/theme/app_colors.';
import 'package:blog_app/features/auth/presentation/pages/signin_page.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const SignUpPage());
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();
@override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Sign Up',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50
                ),),
                const SizedBox(height: 15,),
                AuthField(hintText: 'Name', controller: nameController),
                const SizedBox(height: 15,),
                 AuthField(hintText: 'Email', controller: emailController),
                const SizedBox(height: 15,),
                 AuthField(hintText: 'password',
                controller: passwordController,
                isObscureText: true),
                const SizedBox(height: 20,),
                const AuthGradientButton(buttonText: 'Sign Up',),
                const SizedBox(height: 40,),
                GestureDetector(
                  onTap: () {
                   Navigator.push(context, SigninPage.route());
                  },
                  child: RichText(text: 
                    const TextSpan(text: 'Already have an Account? ',
                    style: TextStyle(
                      fontSize: 18
                    ),
                    children: [
                      TextSpan(text: 'Sign in',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.gradient2
                    )
                    )]
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