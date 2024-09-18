import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../../../domain/entities/ProductsEntity.dart';

abstract class ProductDataSource{
  Future<Either<Failure, List<ProductsEntity>>> getAllProduct();
}