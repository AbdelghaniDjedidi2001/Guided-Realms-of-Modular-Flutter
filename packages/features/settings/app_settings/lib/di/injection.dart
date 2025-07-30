import 'package:app_settings/provider/app_setting_provider.dart';
import 'package:app_settings/provider/app_setting_provider_impl.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

@InjectableInit()
void configureAppSettingsDependency(GetIt getIt, String? environment) {
  getIt.init(environment: environment);
  getIt.registerSingleton<AppSettingProvider>(
    environment == Environment.prod
        ? ProdAppSettingProviderImpl()
        : DevAppSettingProviderImpl(),
  );
}