import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepper_red_ui/stepper_red/provider/stepper_provider.dart';
import 'package:stepper_red_ui/stepper_red/view/homescreen.dart';
import 'package:stepper_red_ui/stepper_red/view/intro_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Stepper_provider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => Intro_Screen(),
          'Home': (context) => StepperScreen(),
        },
      ),
    ),
  );
}
