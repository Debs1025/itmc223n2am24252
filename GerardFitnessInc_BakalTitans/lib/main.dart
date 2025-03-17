/* Authored by: Erick De Belen
Company: Gerard Fitness Inc.
Project: Bakal Titans
Feature: [BKT-0014] Slash Screen
Description: This is where the main splash screen is coded where the logo in its app name is shown*/


import 'package:flutter/material.dart';
import 'splash/pelonio.dart';

// Entry point of the application
// Runs the root widget MyApp
void main() {
  runApp(const MyApp());
}

// Root widget of the application
// StatelessWidget because it doesn't need to manage any state
// Sets up the MaterialApp with basic app configuration
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(
        useMaterial3: true,  
      ),
      home: const SplashScreen(),  // Sets SplashScreen as the initial screen
    );
  }
}

// Splash screen widget shown when app starts
// Uses GestureDetector to handle tap events for navigation
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Navigates to OnboardingScreen when tapped
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const OnboardingScreen()),
        );
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        // Stack allows widgets to be placed on top of each other
        body: Stack(
          fit: StackFit.expand,
          children: [
            // Center widget contains the logo and app name
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo image
                  Image.asset(
                    'assets/logo.png',
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 15),  // Spacing between logo and text
                  // App name text
                  const Text(
                    'BAKAL TITANS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 40,
              child: Center(
                child: Text(
                  'Click anywhere',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}