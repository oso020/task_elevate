class ProductsEntity {
  ProductsEntity({
      this.id, 
      this.title, 
      this.price, 
      this.description, 
      this.category, 
      this.image, 
      this.rating,});

  num? id;
  String? title;
  num? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;


}

class Rating {
  Rating({
      this.rate, 
      this.count,});

  num? rate;
  num? count;


}