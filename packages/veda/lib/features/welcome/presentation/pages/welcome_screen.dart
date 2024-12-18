import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:veda/config/route/paths.dart';
import 'package:veda/features/welcome/presentation/widgets/chip_card.dart';
import 'package:veda/features/welcome/presentation/widgets/selection_choice.dart';
import 'package:veda/features/welcome/presentation/widgets/skip_button.dart';
import 'package:veda_components/veda_componenets.dart';
import 'package:veda_resources/veda_resources.dart';

class WelcomeScreen extends ConsumerWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipPath(
                  clipper: CustomClipPathUp(),
                  child: Container(
                    width: screenWidth(context),
                    color: colorScheme(context).background,
                    height: screenHeight(context) / 2.1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Hi",
                          style: TextStyle(fontFamily: 'rage', fontSize: 32),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenHeight(context) / 15),
                          child: const Center(
                            child: Text(
                              "Is there something you Specific you want to see today?",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Picture(source: Asset.icons.idea),
                    const SizedBox(height: 16),
                    Text(
                      "Today's Interest ?",
                      style: textTheme(context).bodyMedium!.copyWith(
                            color: const Color(0xff443D3D),
                            fontSize: 14,
                          ),
                    ),
                    SizedBox(
                      height: screenHeight(context) / 20,
                    ),
                  ],
                ),
                const SelectionChoice(),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0, bottom: 16),
                  child: SizedBox(
                    height: screenHeight(context) / 12,
                    child: SkipButton(path: Paths.bottomNavBarScreen.path),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
