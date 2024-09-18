part of 'product_view_model_cubit.dart';


abstract class ProductViewModelState {}

 class ProductViewModelInitial extends ProductViewModelState {}
 class ProductViewModelLoading extends ProductViewModelState {}
 class ProductViewModelSuccess extends ProductViewModelState {
  List<ProductsEntity>products;

  ProductViewModelSuccess({
    required this.products
 });
 }
 class ProductViewModelError extends ProductViewModelState {
  Failure failure;
  ProductViewModelError({
    required this.failure
 });
}
