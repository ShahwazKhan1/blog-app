import 'package:blog_app/core/theme/app_colors.';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  final String buttonText;
const AuthGradientButton({ super.key , required this.buttonText});

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [
          AppColors.gradient1,
            AppColors.gradient2,
            // AppColors.gradient3
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight
        ),
        borderRadius: BorderRadius.circular(30)
      ),
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.transparentColor,
          shadowColor: AppColors.transparentColor,
          fixedSize: const Size(150, 50,)
        ),
          child:  Text(buttonText,style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600
          ),),
      ),
    );
  }
}