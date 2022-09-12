import 'package:designchallange1/core/models/product.dart';
import 'package:designchallange1/core/models/type.dart';
import 'package:flutter/material.dart';

class ProductService {
  final products = {
    1: Product(
        price: 100,
        type: "running",
        name: "Nike Air Running",
        imageLink: "assets/shoes/shoe1.png",
        description:
            "Best of all in just one place. Find your perfect product only here.",
        productColor: const Color(0xFF00ddff)),
    2: Product(
        price: 150,
        type: "sport",
        name: "Nike Basketball ",
        imageLink: "assets/shoes/shoe2.png",
        description:
            "Best of all in just one place. Find your perfect product only here.",
        productColor: const Color(0xFFfca9a9)),
    3: Product(
        price: 130,
        type: "running",
        name: "Nike Running Shoe",
        imageLink: "assets/shoes/shoe3.png",
        description:
            "Best of all in just one place. Find your perfect product only here.",
        productColor: const Color(0xFF8bedbc)),
    4: Product(
        price: 250,
        type: "golf",
        name: "Nike Golf Air Zoom",
        imageLink: "assets/shoes/shoe4.png",
        description:
            "Best of all in just one place. Find your perfect product only here.",
        productColor: const Color(0xFFd1cd62)),
    5: Product(
        price: 390,
        type: "jordan",
        name: "Nike Air Jordan",
        imageLink: "assets/shoes/shoe5.png",
        description:
            "Best of all in just one place. Find your perfect product only here.",
        productColor: const Color(0xFF7f7e7f)),
  };

  final types = {
    1: ProductType(
        name: "All", textColor: Colors.white, buttonColor: Colors.black),
    2: ProductType(
        name: "Jordan", textColor: Colors.black, buttonColor: Colors.white),
    3: ProductType(
        name: "Running", textColor: Colors.black, buttonColor: Colors.white),
    4: ProductType(
        name: "Golf", textColor: Colors.black, buttonColor: Colors.white),
    5: ProductType(
        name: "Casual", textColor: Colors.black, buttonColor: Colors.white)
  };

  Future<List<Product>> fetchProducts() async {
    List<Product> pruducts1 = [];
    products.forEach(
      (key, value) => pruducts1.add(value),
    );
    return pruducts1;
  }

  Future<List<ProductType>> fetchTypes() async {
    List<ProductType> type1 = [];
    types.forEach(
      (key, value) => type1.add(value),
    );
    return type1;
  }
}
