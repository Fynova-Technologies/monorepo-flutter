import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:veda/app_setup/local_database/local_data_source.dart';
import 'package:veda_components/veda_componenets.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  @override
  void initState() {
    super.initState();

    // ref.read(localDataSource).updateFirstInstalled(false);
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold());
  }
}
