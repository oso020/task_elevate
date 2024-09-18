
import '../../domain/entities/ProductsEntity.dart';

class ProductsDto extends ProductsEntity {
  ProductsDto({
    super.id,
    super.title,
    super.price,
    super.description,
    super.category,
    super.image,
    super.rating,
  });

  ProductsDto.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
    rating = json['rating'] != null ? RatingDto.fromJson(json['rating']) : null;
  }
}

class RatingDto extends RatingEntity {
  RatingDto({
    super.rate,
    super.count,
  });

  RatingDto.fromJson(dynamic json) {
    rate = json['rate'];
    count = json['count'];
  }
}
