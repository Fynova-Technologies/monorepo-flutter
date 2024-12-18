import 'package:flutter/material.dart';
import 'package:veda/features/welcome/presentation/widgets/chip_card.dart';

class SelectionChoice extends StatelessWidget {
  const SelectionChoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        VedaChipCard(label: 'Fashion and beauty'),
        VedaChipCard(label: 'Information Tech'),
        VedaChipCard(label: 'Workout'),
        VedaChipCard(label: 'Dance'),
        VedaChipCard(label: 'Dating'),
        VedaChipCard(label: 'Business', isCard: false),
        VedaChipCard(label: 'Foodies'),
        VedaChipCard(label: 'Politics'),
        VedaChipCard(label: 'Social Service'),
        VedaChipCard(label: 'Entertainment'),
        VedaChipCard(label: 'Sports'),
        VedaChipCard(label: 'New gift ideas'),
      ],
    );
  }
}
