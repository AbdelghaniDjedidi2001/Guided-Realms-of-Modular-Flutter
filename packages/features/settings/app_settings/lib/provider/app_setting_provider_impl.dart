import 'package:app_settings/provider/app_setting_provider.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AppSettingProvider, env: [Environment.prod])
class ProdAppSettingProviderImpl extends AppSettingProvider {
  @override
  String getAppLanguge() {
    return 'En';
  }

  @override
  String getThemeType() {
    return 'dark';
  }
}

@Injectable(as: AppSettingProvider, env: [Environment.dev])
class DevAppSettingProviderImpl extends AppSettingProvider {
  @override
  String getAppLanguge() {
    return 'Ar';
  }

  @override
  String getThemeType() {
    return 'light';
  }
}
