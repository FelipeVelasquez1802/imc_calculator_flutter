import 'package:flutter/cupertino.dart';
import 'package:imc_calculator/components/gender_selector.dart';
import 'package:imc_calculator/components/height_selector.dart';
import 'package:imc_calculator/components/number_selector.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector(),
        HeightSelector(),
        Row(
          children: [
            NumberSelector(title: "Peso", value: 90, onChanged: (value) {}),
            NumberSelector(title: "Edad", value: 30, onChanged: (value) {}),
          ],
        ),
      ],
    );
  }
}
