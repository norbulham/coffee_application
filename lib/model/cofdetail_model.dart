class CofdetailModel{
  String imgURL;
  String name;
  double price;
  String text;
  double rating;

  CofdetailModel({
    required this.imgURL,
    required this.name,
    required this.price,
    required this.text,
    required this.rating,
});
}

class AllCoffee{
  String coffeeName;

  AllCoffee({
    required this.coffeeName
});

}