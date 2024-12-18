import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';
import 'package:veda/app/widgets/logo_text.dart';
import 'package:veda/config/route/paths.dart';
import 'package:veda_components/veda_componenets.dart';
import 'package:veda_resources/veda_resources.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            SizedBox(
              height: screenHeight(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AnimatedLogo(),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth(context) / 3.7),
                    child: LogoText(
                      imgPath: Asset.lookup.smile,
                      duration: 800,
                      width: 50,
                      height: 30,
                    ),
                  )
                ],
              ),
            ),
            Animate(
              effects: const [
                VisibilityEffect(
                  duration: Duration(milliseconds: 900),
                  curve: Cubic(20, 3, 3, 5),
                ),
              ],
              child: ShapeOfView(
                shape: ArcShape(
                    direction: ArcDirection.Outside,
                    position: ArcPosition.Bottom,
                    height: 54),
                child: Container(
                  width: screenWidth(context),
                  decoration: BoxDecoration(
                    color: colorScheme(context).background,
                  ),
                  height: screenHeight(context) / 8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          context.push(Paths.loginScreenRoute.path);
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                              bottom: screenHeight(context) / 34),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 2)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth(context) / 8,
                                vertical: screenHeight(context) / 800),
                            child: Text(
                              'Login',
                              style: textTheme(context)
                                  .bodyLarge
                                  ?.copyWith(fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AnimatedLogo extends StatelessWidget {
  const AnimatedLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      LogoText(
        imgPath: Asset.lookup.l,
        duration: 100,
      ),
      LogoText(
        imgPath: Asset.lookup.o,
        duration: 200,
      ),
      LogoText(
        imgPath: Asset.lookup.o,
        duration: 300,
      ),
      LogoText(
        imgPath: Asset.lookup.k,
        duration: 400,
      ),
      const SizedBox(width: 40),
      LogoText(
        imgPath: Asset.lookup.u,
        duration: 500,
      ),
      const SizedBox(width: 5),
      LogoText(
        imgPath: Asset.lookup.p,
        duration: 600,
      ),
    ]);
  }
}
