// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../core/api/api_manager.dart' as _i108;
import '../Feature/product/data/data_sources/remote/impl/product_data_source_impl.dart'
    as _i237;
import '../Feature/product/data/data_sources/remote/product_data_source.dart'
    as _i584;
import '../Feature/product/data/repositories/product_repo_impl.dart' as _i921;
import '../Feature/product/domain/repositories/product_repo.dart' as _i447;
import '../Feature/product/domain/use_cases/product_use_case.dart' as _i656;
import '../Feature/product/presentation/manager/product_view_model_cubit.dart'
    as _i839;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i108.ApiManager>(() => _i108.ApiManager());
    gh.factory<_i584.ProductDataSource>(
        () => _i237.ProductDataSourceImpl(apiManager: gh<_i108.ApiManager>()));
    gh.factory<_i447.ProductRepo>(() => _i921.ProductRepoImpl(
        productDataSource: gh<_i584.ProductDataSource>()));
    gh.factory<_i656.ProductUseCase>(
        () => _i656.ProductUseCase(productRepo: gh<_i447.ProductRepo>()));
    gh.factory<_i839.ProductViewModelCubit>(() => _i839.ProductViewModelCubit(
        productUseCase: gh<_i656.ProductUseCase>()));
    return this;
  }
}
