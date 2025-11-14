import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class HeightSelector extends StatefulWidget {
  final double height;
  final Function(double) onChanged;

  const HeightSelector({
    super.key,
    required this.height,
    required this.onChanged,
  });

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.all(8),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundComponent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text("Altura".toUpperCase(), style: TextStyles.bodyText),
            ),
            Text(
              "${widget.height.toStringAsFixed(0)} cm",
              style: TextStyle(
                color: Colors.white,
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
            Slider(
              value: widget.height,
              onChanged: (value) {
                widget.onChanged(value);
              },
              min: 20,
              max: 250,
              divisions: 230,
              label: "${widget.height}",
              activeColor: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}
