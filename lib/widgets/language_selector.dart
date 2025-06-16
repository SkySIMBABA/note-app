import 'package:flutter/material.dart';

class LanguageSelector extends StatelessWidget {
  final String currentLang;
  final ValueChanged<String> onLanguageChanged;

  const LanguageSelector({
    super.key,
    required this.currentLang,
    required this.onLanguageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.6),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.blue.shade100.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: PopupMenuButton<String>(
        initialValue: currentLang,
        onSelected: onLanguageChanged,
        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
          const PopupMenuItem<String>(
            value: 'zh',
            child: Text('简体中文'),
          ),
          const PopupMenuItem<String>(
            value: 'en',
            child: Text('English'),
          ),
        ],
        child: Center(
          child: Text(
            currentLang.toUpperCase(),
            style: TextStyle(
              color: Colors.blue.shade600,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
} 