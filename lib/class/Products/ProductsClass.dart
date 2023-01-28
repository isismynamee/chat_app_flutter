class Products{
  final String? title;
  // final price;
  final String? category;
  final String? description;
  final String? imageProducts;

  Products({
    this.title,
    // this.price,
    this.category,
    this.description,
    this.imageProducts,
  });

  factory Products.fromJson(Map<String, dynamic> json){
    return Products(
      title: json['title'],
      // price: json['price'],
      category: json['category'],
      description: json['description'],
      imageProducts: json['image'],
    );
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title']= title;
    // data['price']= price;
    data['category']= category;
    data['description']= description;
    data['imageProducts']= imageProducts;
    return data;
  }
}

