import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class CardComponent extends StatefulWidget {
  final String image;
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const CardComponent({
    super.key,
    required this.image,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<CardComponent> createState() => _CardComponentState();
}

class _CardComponentState extends State<CardComponent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: widget.onTap,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(
              color: (widget.isSelected)
                  ? AppColors.backgroundComponentSelected
                  : AppColors.backgroundComponent,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Image.asset(widget.image, height: 100),
                  Text(widget.text, style: TextStyles.bodyText),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
