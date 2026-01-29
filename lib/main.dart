import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'screen/home_screen.dart';
import 'screen/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // من هنا نربطه بالمشروع
  await Supabase.initialize(
    url: 'https://ydvjblharcazafvhaakx.supabase.co', // رابط المشروع
    anonKey: 'sb_publishable_K1qoQOsn2EU4Yv_T-PRSwg_n7T4bVGo', //  key
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignupScreen(),
    );
  }
}
