
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';


@InjectableInit()
void configureDataStoreDependency(GetIt getIt, String? environment) => getIt.init(environment: environment);
// {
  
  // getIt.registerSingleton<AppSettingProvider>(
  //   environment == Environment.prod
  //       ? ProdAppSettingProviderImpl()
  //       : DevAppSettingProviderImpl(),
  // );
// }