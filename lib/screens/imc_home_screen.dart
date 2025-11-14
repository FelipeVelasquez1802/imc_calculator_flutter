import 'package:flutter/material.dart';
import 'package:imc_calculator/components/gender_selector.dart';
import 'package:imc_calculator/components/height_selector.dart';
import 'package:imc_calculator/components/number_selector.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  bool selectedGender = true;
  double selectedHeight = 170;
  int selectedWeight = 90;
  int selectedAge = 30;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector(
          isSelectedGender: selectedGender,
          onGenderSelected: (newValue) {
            setState(() {
              selectedGender = newValue;
            });
          },
        ),
        HeightSelector(
          height: selectedHeight,
          onChanged: (newValue) {
            setState(() {
              selectedHeight = newValue;
            });
          },
        ),
        Row(
          children: [
            NumberSelector(
              title: "Peso",
              value: selectedWeight,
              onChanged: (newValue) {
                setState(() {
                  selectedWeight = newValue;
                });
              },
            ),
            NumberSelector(
              title: "Edad",
              value: selectedAge,
              onChanged: (newValue) {
                setState(() {
                  selectedAge = newValue;
                });
              },
            ),
          ],
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 30, left: 8, right: 8),
          child: SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                backgroundColor: WidgetStateProperty.all(AppColors.primary),
              ),
              child: Text("Calcular IMC", style: TextStyles.bodyText),
            ),
          ),
        ),
      ],
    );
  }
}
