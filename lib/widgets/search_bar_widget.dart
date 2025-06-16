import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final String value;
  final ValueChanged<String> onChanged;
  final String placeholder;

  const SearchBarWidget({
    super.key,
    required this.value,
    required this.onChanged,
    required this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.6),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: Colors.blue.shade100.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: TextField(
        controller: TextEditingController(text: value),
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: placeholder,
          hintStyle: TextStyle(
            color: Colors.grey.shade500,
          ),
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.blue.shade400,
          ),
        ),
        style: const TextStyle(
          color: Colors.black87,
        ),
      ),
    );
  }
} 