import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:task_elevate/core/errors/failures.dart';

import '../../domain/entities/ProductsEntity.dart';
import '../../domain/repositories/product_repo.dart';
import '../data_sources/remote/product_data_source.dart';

@Injectable(as:ProductRepo )

class ProductRepoImpl implements ProductRepo{
  ProductDataSource productDataSource;
  ProductRepoImpl({
    required this.productDataSource
});
  @override
  Future<Either<Failure, List<ProductsEntity>>> getAllProducts() async{
    
    var either=await productDataSource.getAllProduct();
    
   return either.fold((l) => Left(l), (r) => Right(r),);
    
  }

}