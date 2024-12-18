import 'package:flutter/material.dart';
import 'package:veda_components/veda_componenets.dart';

class VedaButton extends StatelessWidget {
  final String label;
  final VoidCallback ontap;
  final bool showProgress;

  const VedaButton({
    required this.label,
    required this.ontap,
    this.showProgress = false,
  });

  factory VedaButton.tonal({
    required String label,
    required VoidCallback ontap,
    bool showProgress = false,
    Color backgroundColor = const Color(0xff1D67DD),
    double borderRadius = 10.0,
    double boxShadowBlurRadius = 4.0,
    double boxShadowSpreadRadius = 0.0,
    Offset boxShadowOffset = const Offset(0, 4),
  }) =>
      _TonalButton(
        label: label,
        ontap: ontap,
        showProgress: showProgress,
        backgroundColor: backgroundColor,
        borderRadius: borderRadius,
        boxShadowBlurRadius: boxShadowBlurRadius,
        boxShadowSpreadRadius: boxShadowSpreadRadius,
        boxShadowOffset: boxShadowOffset,
      );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: showProgress ? null : ontap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white, width: 2),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              spreadRadius: 0,
              offset: Offset(0, 4),
              color: Colors.black.withOpacity(0.25),
            )
          ],
          color: Color(0xff1D67DD),
        ),
        child: Center(
          child: showProgress
              ? SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                )
              : Text(
                  label,
                  style: textTheme(context).labelLarge,
                ),
        ),
      ),
    );
  }
}

class _TonalButton extends VedaButton {
  final Color backgroundColor;
  final double borderRadius;
  final double boxShadowBlurRadius;
  final double boxShadowSpreadRadius;
  final Offset boxShadowOffset;

  _TonalButton({
    required String label,
    required VoidCallback ontap,
    required bool showProgress,
    required this.backgroundColor,
    required this.borderRadius,
    required this.boxShadowBlurRadius,
    required this.boxShadowSpreadRadius,
    required this.boxShadowOffset,
  }) : super(label: label, ontap: ontap, showProgress: showProgress);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: showProgress ? null : ontap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: Colors.white, width: 2),
          boxShadow: [
            BoxShadow(
              blurRadius: boxShadowBlurRadius,
              spreadRadius: boxShadowSpreadRadius,
              offset: boxShadowOffset,
              color: Colors.black.withOpacity(0.25),
            )
          ],
          color: Colors.white,
        ),
        child: Center(
          child: showProgress
              ? SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        colorScheme(context).background),
                  ),
                )
              : Text(
                  label,
                  style: textTheme(context)
                      .labelLarge
                      ?.copyWith(color: colorScheme(context).background),
                ),
        ),
      ),
    );
  }
}
