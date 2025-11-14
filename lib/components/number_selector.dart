import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';

import '../core/text_styles.dart';

class NumberSelector extends StatefulWidget {
  final String title;
  final int value;
  final ValueChanged<int> onChanged;

  const NumberSelector({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.backgroundComponent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              Text(widget.title, style: TextStyles.bodyText),
              Text(
                widget.value.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
