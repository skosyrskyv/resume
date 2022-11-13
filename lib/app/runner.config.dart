// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import '../core/navigator/cubit/bottom_navigator_cubit.dart' as _i4;
import '../core/theme/bloc/theme_bloc.dart' as _i10;
import '../core/theme/models/app_color_scheme.dart' as _i8;
import '../core/theme/models/app_text_themes.dart' as _i3;
import '../core/theme/models/app_theme.dart' as _i9;
import '../core/theme/models/color_pallet.dart' as _i5;
import '../core/widgets/menu/cubit/menu_cubit.dart' as _i6;
import 'runner.dart' as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final injectableModule = _$InjectableModule();
  gh.factory<_i3.AppTextTheme>(() => _i3.BaseAppTextTheme());
  gh.factory<_i4.BottomNavigatorCubit>(() => _i4.BottomNavigatorCubit());
  gh.factory<_i5.ColorPallet>(() => _i5.ColorPallet());
  gh.factory<_i6.MenuCubit>(() => _i6.MenuCubit());
  await gh.singletonAsync<_i7.SharedPreferences>(
    () => injectableModule.secureStore,
    preResolve: true,
  );
  gh.factory<_i8.AppColorScheme>(
      () => _i8.BaseAppColorScheme(colorPallet: get<_i5.ColorPallet>()));
  gh.factory<_i9.AppTheme>(() => _i9.BaseAppTheme(
        colorScheme: get<_i8.AppColorScheme>(),
        appTextTheme: get<_i3.AppTextTheme>(),
      ));
  gh.factory<_i10.ThemeBloc>(() => _i10.ThemeBloc(
        localstore: get<_i7.SharedPreferences>(),
        theme: get<_i9.AppTheme>(),
      ));
  return get;
}

class _$InjectableModule extends _i11.InjectableModule {}
