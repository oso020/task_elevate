import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entities/ProductsEntity.dart';
import '../../domain/use_cases/product_use_case.dart';

part 'product_view_model_state.dart';
@injectable
class ProductViewModelCubit extends Cubit<ProductViewModelState> {
  ProductUseCase productUseCase;
  ProductViewModelCubit({required this.productUseCase})
      : super(ProductViewModelInitial());

  Future<void>getAllProducts()async{
    emit(ProductViewModelLoading());
    var either=await productUseCase.invoke();

    either.fold((l) {
      emit(ProductViewModelError(failure: l));
    }, (r) {
      emit(ProductViewModelSuccess(products: r));
    },);
  }
}
