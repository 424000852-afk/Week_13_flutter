import 'package:flutter/material.dart';

void main() {
  runApp(const LoginFigmaApp());
}

// Root Widget
class LoginFigmaApp extends StatelessWidget {
  const LoginFigmaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PC16 Week 13 - Log In Screen',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'sans-serif',
      ),
      home: const LoginScreen(),
    );
  }
}

// Custom StatelessWidget matching Figma "3 - A - Log In"
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  // Colors extracted from your Figma screen
  static const Color darkBgColor = Color(0xFF212121);
  static const Color limeAccentColor = Color(0xFFDDF247);
  static const Color circleIconBg = Color(0xFF1A1A1A);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBgColor,
      appBar: AppBar(
        backgroundColor: darkBgColor,
        elevation: 0,
        centerTitle: true,
        // TIP: Change this text or color during Step 6 to demonstrate Hot Reload!
        title: const Text(
          'Log In',
          style: TextStyle(
            color: limeAccentColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 1. Top "Welcome" Section
              Container(
                padding: const EdgeInsets.only(top: 56.0, bottom: 32.0),
                alignment: Alignment.center,
                child: const Text(
                  'Welcome',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 42,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.5,
                  ),
                ),
              ),

              // 2. Lime-Yellow Input Form Container
              Container(
                width: double.infinity,
                color: limeAccentColor,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                  vertical: 28.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Username or email label
                    const Text(
                      'Username or email',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Email Input Box (Static Container + Text)
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 14.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: const Text(
                        'h e l l o @ e m a i l . c o m',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                        ),
                      ),
                    ),

                    const SizedBox(height: 18),

                    // Password label
                    const Text(
                      'Password',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Password Input Box (Static Container + Text)
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 14.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: const Text(
                        '* * * * * * * * * * * *',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    // Right-aligned Forgot Password link
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 28),

              // 3. Bottom Action & Social Section
              Column(
                children: [
                  // Pill-shaped Log In Button
                  Container(
                    width: 190,
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFF333333),
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(color: Colors.white54, width: 1.0),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'Log In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 14),

                  // Create Account Text
                  const Text(
                    'Create Account',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Social Login Circles (Row)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Browser / Google Circle
                      Container(
                        width: 48,
                        height: 48,
                        decoration: const BoxDecoration(
                          color: circleIconBg,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.language,
                          color: Colors.white70,
                          size: 26,
                        ),
                      ),
                      const SizedBox(width: 16),
                      // Facebook Circle
                      Container(
                        width: 48,
                        height: 48,
                        decoration: const BoxDecoration(
                          color: circleIconBg,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.facebook,
                          color: Colors.blueAccent,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
