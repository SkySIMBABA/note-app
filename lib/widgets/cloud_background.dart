import 'package:flutter/material.dart';

class CloudBackground extends StatelessWidget {
  const CloudBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Big cloud 1
        Positioned(
          top: -50,
          left: -80,
          child: _buildCloud(400, 0.4, Colors.white.withOpacity(0.5)),
        ),
        // Big cloud 2
        Positioned(
          bottom: -100,
          right: -120,
          child: _buildCloud(500, 0.6, Colors.white.withOpacity(0.4)),
        ),
        // Small cloud 1
        Positioned(
          top: MediaQuery.of(context).size.height * 0.2,
          right: -30,
          child: _buildCloud(200, 0.3, Colors.white.withOpacity(0.6)),
        ),
        // Small cloud 2
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.15,
          left: -50,
          child: _buildCloud(250, 0.5, Colors.white.withOpacity(0.5)),
        ),
      ],
    );
  }

  Widget _buildCloud(double size, double opacity, Color color) {
    return Container(
      width: size,
      height: size * 0.6,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(size * 0.3),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.3),
            blurRadius: size * 0.1,
            offset: Offset(0, size * 0.05),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: size * 0.2,
            child: _buildCloudBubble(size * 0.6, color),
          ),
          Positioned(
            bottom: 0,
            right: size * 0.1,
            child: _buildCloudBubble(size * 0.5, color),
          ),
          Positioned(
            bottom: size * 0.1,
            left: size * 0.1,
            child: _buildCloudBubble(size * 0.4, color),
          ),
        ],
      ),
    );
  }

  Widget _buildCloudBubble(double size, Color color) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
} 