import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:task_elevate/core/api/api_manager.dart';
import 'package:task_elevate/core/errors/failures.dart';

import '../../../../../../core/api/endpoints.dart';
import '../../../models/ProductsDto.dart';
import '../product_data_source.dart';


@Injectable(as: ProductDataSource)
class ProductDataSourceImpl extends ProductDataSource {
  final ApiManager apiManager;

  ProductDataSourceImpl({required this.apiManager});

  @override
  Future<Either<Failure, List<ProductsDto>>> getAllProduct() async {
    try {
      final response = await apiManager.getData(
        Endpoints.getAllProducts, // Assuming it's a GET request
      );

      if (response.statusCode != null &&
          response.statusCode! >= 200 &&
          response.statusCode! < 300) {
         List productsJson = response.data ;
        var products = productsJson
            .map((json) => ProductsDto.fromJson(json))
            .toList();

        


        return Right(products);
      } else {
        return Left(ServerFailure(
          errorMessage: "Failed to fetch products",
        ));
      }
    } catch (e) {
      print(e.toString());
      return Left(NetworkFailure(errorMessage: "No Internet Connection"));
    }
  }
}
