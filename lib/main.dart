import 'package:blog_app/core/theme/theme.dart';
import 'package:blog_app/features/auth/presentation/pages/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:blog_app/core/secrets/app_secrets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 final supabase = await Supabase.initialize(
    url: AppSecrets.supabaseUrl,
    anonKey: AppSecrets.supabaseanonKey);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog App',
      theme: AppTheme.darkThemeMode,
      home: const SigninPage(),
    );
  }
}