import 'package:flutter/material.dart';
import 'dart:ui';

class DecorativeBackground extends StatelessWidget {
  final Widget child;

  const DecorativeBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFDEC9ED), // Light purple
            Color(0xFFEDD9F5), // Lighter purple pink
            Color(0xFFE5D3F2), // Light purple
          ],
        ),
      ),
      child: Stack(
        children: [
          // Background coins layer (before blur)
          Positioned.fill(
            child: _buildCoinsGrid(screenWidth),
          ),
          
          // Backdrop blur effect overlay
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: Container(
                color: const Color(0xFFEDD9F5).withOpacity(0.25),
              ),
            ),
          ),
          
          // Content
          child,
        ],
      ),
    );
  }

  Widget _buildCoinsGrid(double screenWidth) {
    // Calculate coin size and spacing
    final coinSize = screenWidth * 0.32; // ~120px on 375px screen
    final spacing = (screenWidth - (coinSize * 3)) / 4;
    
    return Stack(
      children: [
        // Row 1
        Positioned(
          top: 60,
          left: spacing,
          child: _buildCoin(coinSize),
        ),
        Positioned(
          top: 60,
          left: spacing * 2 + coinSize,
          child: _buildCoin(coinSize),
        ),
        Positioned(
          top: 60,
          right: spacing,
          child: _buildCoin(coinSize),
        ),
        
        // Row 2
        Positioned(
          top: 60 + coinSize + 30,
          left: spacing,
          child: _buildCoin(coinSize),
        ),
        Positioned(
          top: 60 + coinSize + 30,
          left: spacing * 2 + coinSize,
          child: _buildCoin(coinSize),
        ),
        Positioned(
          top: 60 + coinSize + 30,
          right: spacing,
          child: _buildCoin(coinSize),
        ),
        
        // Row 3
        Positioned(
          top: 60 + (coinSize + 30) * 2,
          left: spacing,
          child: _buildCoin(coinSize),
        ),
        Positioned(
          top: 60 + (coinSize + 30) * 2,
          left: spacing * 2 + coinSize,
          child: _buildCoin(coinSize),
        ),
        Positioned(
          top: 60 + (coinSize + 30) * 2,
          right: spacing,
          child: _buildCoin(coinSize),
        ),
      ],
    );
  }

  Widget _buildCoin(double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFD946EF).withOpacity(0.4),
            blurRadius: 20,
            spreadRadius: 5,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Image.asset(
        'assets/images/flowva_coin.png',
        width: size,
        height: size,
        fit: BoxFit.contain,
        errorBuilder: (context, error, stackTrace) {
          // Fallback if image doesn't load
          return Container(
            width: size,
            height: size,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                center: Alignment(-0.2, -0.3),
                radius: 0.8,
                colors: [
                  Color(0xFFFFFFFF),
                  Color(0xFFFF80F5),
                  Color(0xFFE854F0),
                  Color(0xFFD946EF),
                  Color(0xFFC084FC),
                  Color(0xFFA855F7),
                  Color(0xFF9333EA),
                ],
                stops: [0.0, 0.2, 0.35, 0.5, 0.65, 0.8, 1.0],
              ),
            ),
            child: Center(
              child: Icon(
                Icons.error_outline,
                color: Colors.white,
                size: size * 0.3,
              ),
            ),
          );
        },
      ),
    );
  }
}