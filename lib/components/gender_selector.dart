import 'package:flutter/material.dart';
import 'package:imc_calculator/components/card_component.dart';

class GenderSelector extends StatefulWidget {
  final bool isSelectedGender;
  final Function(bool) onGenderSelected;

  const GenderSelector({
    super.key,
    required this.isSelectedGender,
    required this.onGenderSelected,
  });

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CardComponent(
          image: "assets/images/male.png",
          text: "Male".toUpperCase(),
          isSelected: widget.isSelectedGender,
          onTap: () {
            widget.onGenderSelected(true);
          },
        ),
        CardComponent(
          image: "assets/images/female.png",
          text: "Females".toUpperCase(),
          isSelected: !widget.isSelectedGender,
          onTap: () {
            widget.onGenderSelected(false);
          },
        ),
      ],
    );
  }
}
