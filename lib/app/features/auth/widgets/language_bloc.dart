import 'package:flutter/material.dart';
import 'package:protinidhi/app/core/theme/colors.dart';

class LanguageBloc extends StatelessWidget {
  const LanguageBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: AppColors.langugaeBoxColor,
        ),
        child: const Text(
          "Bangla",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
