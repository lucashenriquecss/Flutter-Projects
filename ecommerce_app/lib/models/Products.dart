import 'package:flutter/material.dart';

class Product {
  final String image, title, description, category;
  final int price, size, id;
  final Color color;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
    required this.category,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Pizza",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/pizza.jpg",
      color: Color(0xFF3D82AE),
      category: "Lanches"),
  Product(
      id: 2,
      title: "Pizza 2",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/pizza.jpg",
      color: Color(0xFFD3A984),
      category: "Lanches"),
  Product(
      id: 3,
      title: "Pizza 3",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/pizza.jpg",
      color: Color(0xFF989493),
      category: "Lanches"),
  Product(
      id: 4,
      title: "Bebida",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/bebidas.jpg",
      color: Color(0xFFE6B398),
      category: "Bebidas"),
  Product(
      id: 5,
      title: "Bebida 2",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bebidas.jpg",
      color: Color(0xFFFB7883),
      category: "Bebidas"),
  Product(
    id: 6,
    title: "Bebida 3",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bebidas.jpg",
    color: Color(0xFFAEAEAE),
    category: "Bebidas",
  ),
  Product(
    id: 7,
    title: "Sobremesa",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/macarons.jpg",
    color: Color(0xFFAEAEAE),
    category: "Sobremesas",
  ),
  Product(
    id: 8,
    title: "Sobremesa 2",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/macarons.jpg",
    color: Color(0xFFAEAEAE),
    category: "Sobremesas",
  ),
  Product(
    id: 9,
    title: "Sobremesa 3",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/macarons.jpg",
    color: Color(0xFFAEAEAE),
    category: "Sobremesas",
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
