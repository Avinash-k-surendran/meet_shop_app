import 'package:flutter/material.dart';
import 'package:meet_shop/Meet%20shop/model/product.dart';


List<ProductModel> fish = [
  ProductModel(name: "Tuna",
      price: 120,
      image: "https://media.istockphoto.com/id/1130266218/photo/nice.webp?b=1&s=170667a&w=0&k=20&c=ZAnTWYJb6aEps4Hou5rfcjr7pC9EdUAsnKSp07EUuTY="),
  ProductModel(name: "Prawns",
      price: 100,
      image: "https://media.istockphoto.com/id/157376365/photo/cooked-shrimp-with-full-shell-isolated-on-white-background.webp?b=1&s=170667a&w=0&k=20&c=tvQu6GNXLNJfhnrYJ2B6mUB5CR5qY6fAdSUeHF0w9N0="),
  ProductModel(name: "Salmon",
      price: 500,
      image: "https://media.istockphoto.com/id/616902494/photo/salmon.webp?b=1&s=170667a&w=0&k=20&c=NxtCtRBPrsHAT8HqOfL6Eko9W2uSo9dPxZzgZnTM1-8="),
  ProductModel(name: "Lobster",
      price: 800,
      image: "https://media.istockphoto.com/id/183327129/photo/lobster.webp?b=1&s=170667a&w=0&k=20&c=pwt-O06GU6QCt2O9NowWYxrX3uuq4ovI661im_U-GQo="),

];
List<ProductModel> marinated = [
  ProductModel(name: "Chicken",
    price: 350,
    image: "https://media.istockphoto.com/id/535163013/photo/marinating-chicken.webp?b=1&s=170667a&w=0&k=20&c=4K4qfEjNM5UUyHnHpwmUGuG0hUgOSb5ZR-ZaO08A42s=",),
  ProductModel(name: "Fish",
    price: 260,
    image: "https://media.istockphoto.com/id/175496492/photo/marinated-salmon.webp?b=1&s=170667a&w=0&k=20&c=cEUgpb24Fx76CCmNNxZhlISlIwV-bgsuEyodgCn9maY=",),
  ProductModel(name: "Beef",
    price: 580,
    image: "https://media.istockphoto.com/id/869642388/photo/marinated-beef.webp?b=1&s=170667a&w=0&k=20&c=JCQcaetBzJo5D1ET5aDePzGe87fEkoaKDbMSxpaCCpw=",),
  ProductModel(name: "Mutton",
    price: 800,
    image: "https://media.istockphoto.com/id/119159766/photo/marinating-meat.webp?b=1&s=170667a&w=0&k=20&c=ybDFdfbz9SNqFeKf4eNXumDHBgMYdii6Di4_-lhQIhI=",),
];

List<ProductModel> meat = [
  ProductModel(name: "Chicken",
    price: 120,
    image: "https://images.unsplash.com/photo-1587593810167-a84920ea0781?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Y2hpY2tlbiUyMG1lYXR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",),
  ProductModel(name: "Mutton",
    price: 350,
    image: "https://images.unsplash.com/photo-1690983323238-0b91789e1b5a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fG11dHRvbiUyMG1lYXR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",),
  ProductModel(name: "Beef",
    price: 550,
    image: "https://media.istockphoto.com/id/174479270/photo/fresh-ribeye-steaks-at-the-butcher-shop.webp?b=1&s=170667a&w=0&k=20&c=-xq-dAqjL5reqUiKQXCbD0xMfKiNw38VLs44KPp9T2k=",),
  ProductModel(name: "Duck",
    price: 400,
    image: "https://images.unsplash.com/photo-1672787380764-a603a9d4196d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fER1Y2slMjBtZWF0fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",),
];

List<ProductModel> readytocook = [
  ProductModel(name: "Chicken",
    price: 370,
    image: "https://images.unsplash.com/photo-1602534923950-d2c7e6be0ca0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODB8fGZyaWVkJTIwY2hpY2tlbiUyMHJlYWR5JTIwdG8lMjBjb29rfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",),
  ProductModel(name: "Mock Meat",
    price: 210,
    image: "https://images.unsplash.com/photo-1690983322069-ee07b4c1c9c3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODB8fG1vayUyMG1lYXR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",),
  ProductModel(name: "Soya Tikka",
    price: 120,
    image: "https://images.unsplash.com/photo-1690401767645-595de0e0e5f8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzJ8fHNveWElMjB0aWtrYXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",),
  ProductModel(name: "Like chicken",
    price: 260,
    image: "https://images.unsplash.com/photo-1594221708779-94832f4320d1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y2hpY2tlbiUyMGZvb2R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",),

];

class CartProvider extends ChangeNotifier {

  var fishh = fish;

  List<ProductModel> get fishhome => fishh;

  var marinateh = marinated;

  List<ProductModel> get marinatedhome => marinateh;

  var meath = meat;

  List<ProductModel> get meathome => meath;

  var readytocookh = readytocook;

  List<ProductModel> get readytocookhome => readytocookh;


  final List<ProductModel> cart = [];

  List<ProductModel> get cartall => cart;

  void addToCart(ProductModel data) {
    int index = cart.indexWhere((element) => element == data);
    if (index != -1 ) {
      cart[index].count =cart[index].count +1;
    }else {
      cart.add(data);
    }
    notifyListeners();
  }

  void removeFromCart(ProductModel data) {
    int index = cart.indexWhere((element) => element == data);
    if (index != -1) {
      if (cart[index].count > 1) {
        cart[index].count--;
      } else {
        cart.removeAt(index);
      }
      notifyListeners();
    }
  }

}