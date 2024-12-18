import 'package:flutter/material.dart';
import 'package:veda_components/veda_componenets.dart';

class VedaChipCard extends StatefulWidget {
  final String label;
  final bool isCard;

  const VedaChipCard({Key? key, required this.label, this.isCard = true})
      : super(key: key);

  @override
  _VedaChipCardState createState() => _VedaChipCardState();
}

class _VedaChipCardState extends State<VedaChipCard> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
      child: Container(
        height: 30,
        width: 120,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 3),
        decoration: BoxDecoration(
          color: isPressed ? Colors.blue : Colors.white,
          borderRadius: BorderRadius.circular(isPressed ? 4 : 4),
          boxShadow: [
            BoxShadow(
              blurRadius: isPressed ? 8 : 4,
              spreadRadius: 0,
              offset: const Offset(0, 4),
              color: isPressed
                  ? Colors.black.withOpacity(0.5)
                  : Colors.black.withOpacity(0.32),
            ),
          ],
        ),
        child: Center(
          child: Text(
            widget.label,
            style: textTheme(context).bodySmall!.copyWith(
                  color: isPressed ? Colors.white : const Color(0xff615757),
                ),
          ),
        ),
      ),
    );
  }
}
