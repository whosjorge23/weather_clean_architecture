import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_clean_architecture/core/shared/context_extension.dart';
import 'package:weather_clean_architecture/core/theme/cubit/app_settings_cubit.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.settings),
      ),
      body: Center(
        child: DropdownButton<Locale>(
          onChanged: context.read<AppSettingsCubit>().changeLocale,
          value: context.watch<AppSettingsCubit>().state,
          items: [
            DropdownMenuItem(
              value: const Locale('en'),
              child: Text(context.l10n.english),
            ),
            DropdownMenuItem(
              value: const Locale('it'),
              child: Text(context.l10n.italian),
            ),
          ],
        ),
      ),
    );
  }
}
