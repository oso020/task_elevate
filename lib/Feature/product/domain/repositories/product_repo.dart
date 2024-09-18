import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/ProductsEntity.dart';


abstract class ProductRepo{
  Future<Either<Failure, List<ProductsEntity>>> getAllProducts();
}