import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_management/controller/addscreen_provider.dart';
import 'package:student_management/controller/bus_studentsprovider.dart';
import 'package:student_management/controller/class_studentsprovider.dart';
import 'package:student_management/controller/login_provider.dart';
import 'package:student_management/controller/paymentdetails_provider.dart';
import 'package:student_management/controller/studentinfo_provider.dart';
import 'package:student_management/view/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AddScreenProvider()),
        ChangeNotifierProvider(create: (context) => ClassStudentsProvider()),
        ChangeNotifierProvider(create: (context) => BusStudentsProvider()),
        ChangeNotifierProvider(create: (context) => PaymentDetailsProvider()),
        ChangeNotifierProvider(create: (context) => LoginProvider()),
        ChangeNotifierProvider(create: (context) => StudentInfoProvider()),
      ],
      child: const MaterialApp(
        title: 'Student Management',
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
