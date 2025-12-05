import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToLogin();
  }

  Future<void> _navigateToLogin() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      context.go('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    
    const backgroundColor = Color(0xFF9013FE);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            // Centered logo
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Logo image
                  Image.asset(
                    'assets/images/bravoo_logo.png',
                    height: 120, 
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 16),

                  // ❌ REMOVED THE "BRAVOO" TEXT HERE
                ],
              ),
            ),

            // Optional bottom bar indicator (small white line),
            // uncomment if it exists in the Figma splash
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Padding(
            //     padding: const EdgeInsets.only(bottom: 16),
            //     child: Container(
            //       width: 120,
            //       height: 4,
            //       decoration: BoxDecoration(
            //         color: Colors.white.withOpacity(0.7),
            //         borderRadius: BorderRadius.circular(999),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
