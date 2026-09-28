import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:randommeme/view/target_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          // Background Logo
          Positioned.fill(
            child: Image.asset(
              "assets/logo.png",
              fit: BoxFit.cover,
            ),
          ),

          // Blur Effect
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 15,
                sigmaY: 15,
              ),
              child: Container(
                color: Colors.black.withOpacity(0.45),
              ),
            ),
          ),

          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    const Icon(
                      Icons.sentiment_very_satisfied,
                      size: 80,
                      color: Colors.amber,
                    ),

                    const SizedBox(height: 20),

                    const Text(
                      "Welcome To",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "Random Meme",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 46,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),

                    const SizedBox(height: 20),

                    const Text(
                      "😂 Daily Memes\n🔥 Better Mood\n🚀 More Fun",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18,
                        height: 1.5,
                      ),
                    ),

                    const SizedBox(height: 60),

                    Container(
                      width: 260,
                      height: 65,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(40),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xffFFD54F),
                            Color(0xffFFB300),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.orange.withOpacity(.5),
                            blurRadius: 15,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius:
                              BorderRadius.circular(40),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) =>
                                    const TargetScreen(),
                              ),
                            );
                          },
                          child: const Row(
                            mainAxisAlignment:
                                MainAxisAlignment.center,
                            children: [

                              Icon(
                                Icons.rocket_launch,
                                color: Colors.black,
                              ),

                              SizedBox(width: 10),

                              Text(
                                "Let's Start",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight:
                                      FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}