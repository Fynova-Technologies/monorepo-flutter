import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:veda_resources/veda_resources.dart';

final languageProvider = StateProvider<String>(
    (ref) => const VedaLocalization().supportedLocales.first.languageCode);

final supportedLocalesProvider =
    Provider<List<Locale>>((_) => const VedaLocalization().supportedLocales);
