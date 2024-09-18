import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../entities/ProductsEntity.dart';
import '../repositories/product_repo.dart';
@injectable
class ProductUseCase{
  ProductRepo productRepo;

  ProductUseCase({required this.productRepo});

  Future<Either<Failure, List<ProductsEntity>>> invoke()async{
    var response=await productRepo.getAllProducts();

    return response;
  }
}