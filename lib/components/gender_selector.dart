import 'package:flutter/material.dart';
import 'package:imc_calculator/components/card_component.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  bool _isSelectedGender = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CardComponent(
          image: "assets/images/male.png",
          text: "Male".toUpperCase(),
          isSelected: _isSelectedGender,
          onTap: () {
            setState(() {
              _isSelectedGender = true;
            });
          },
        ),
        CardComponent(
          image: "assets/images/female.png",
          text: "Females".toUpperCase(),
          isSelected: !_isSelectedGender,
          onTap: () {
            setState(() {
              _isSelectedGender = false;
            });
          },
        ),
      ],
    );
  }
}
