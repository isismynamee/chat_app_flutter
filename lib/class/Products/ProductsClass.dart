class Products{
  final String? title;
  final price;
  final String? category;
  final String? description;
  final String? imageProducts;
  final Rating? rating;

  Products({
    this.title,
    this.price,
    this.category,
    this.description,
    this.imageProducts,
    this.rating
  });

  factory Products.fromJson(Map<String, dynamic> json){
    return Products(
      title: json['title'],
      price: json['price'].toString(),
      rating: Rating.fromJson(json['rating']),
      category: json['category'],
      description: json['description'],
      imageProducts: json['image'],
    );
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title']= title;
    data['price']= price;
    data['category']= category;
    data['rating']=rating;
    data['description']= description;
    data['imageProducts']= imageProducts;
    return data;
  }
}
class Rating {
  final rate;
  final count;

  Rating({
    this.rate,
    this.count
  });

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      rate: json['rate'],
      count: json['count']
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rate'] = rate;
    data['count'] = count;
    return data;
  }
}

