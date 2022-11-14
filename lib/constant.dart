import 'dart:core';

import "models/category.dart";
import 'models/meals.dart';

List<Category> DUMMY_CATEGORIES = [
  Category(
    id: 'c1',
    title: 'Breakfast',
  ),
  Category(
    id: 'c2',
    title: 'East',
  ),
  Category(
    id: 'c3',
    title: 'Western',
  ),
  Category(
    id: 'c4',
    title: 'Pasta',
  ),
  Category(
    id: 'c5',
    title: 'Pizza',
  ),
  Category(
    id: 'c6',
    title: 'Snacks',
  ),
  Category(
    id: 'c7',
    title: 'Sea Food',
  ),
  Category(
    id: 'c8',
    title: 'Chicken Sandwich',
  ),
  Category(
    id: 'c9',
    title: 'Burger Sandwich',
  ),
  Category(
    id: 'c10',
    title: 'Cold Drinks',
  ),
  Category(
    id: 'c11',
    title: 'Hot Drinks',
  ),
  Category(
    id: 'c12',
    title: 'Dessert',
  ),
  Category(
    id: 'c13',
    title: 'Nuts',
  ),
];

List<Meal> DUMMY_MEALS = [
  Meal(id: 'm1', title: "Fish", image: "assets/cake.jpg", price: "6.127"),
  Meal(
    id: 'm2',
    title: "Fish",
    image: "assets/cake.jpg",
    price: "6.127",
  ),
  Meal(
    id: 'm3',
    title: "Fish",
    image: "assets/cake.jpg",
    price: "6.127",
  ),
  Meal(id: 'm4', title: "Fish", image: "assets/cake.jpg", price: "6.127"),
  Meal(
    id: 'm5',
    title: "Fish",
    image: "assets/cake.jpg",
    price: "6.127",
  ),
  Meal(id: 'm6', title: "Fish", image: "assets/cake.jpg", price: "6.127"),
];
List<Map<String, dynamic>> Meals_List = [
  {
    'Meal_List': 'c1',
    'Meal': [
      Meal(id: 'm1', title: "Fish", image: "assets/cake.jpg", price: "6.127"),
      Meal(id: 'm1', title: "Fish", image: "assets/cake.jpg", price: "6.127"),
      Meal(id: 'm1', title: "Fish", image: "assets/cake.jpg", price: "6.127"),
      Meal(id: 'm1', title: "Fish", image: "assets/cake.jpg", price: "6.127"),
    ]
  },
  {
    'Meal_List': 'c2',
    'Meal': [
      Meal(id: 'm1', title: "c2", image: "assets/cake.jpg", price: "6.127"),
      Meal(id: 'm1', title: "Fish", image: "assets/cake.jpg", price: "6.127"),
      Meal(id: 'm1', title: "Fish", image: "assets/cake.jpg", price: "6.127"),
      Meal(id: 'm1', title: "Fish", image: "assets/cake.jpg", price: "6.127"),
    ]
  }
];
//List <Meal> DUMMY_MEALS=[
// Meal(id: 'm1', title: "Fish",image: "assets/cake.jpg",price: "6.127"
//   Meal_List(id: 'm2', title: "Fish", image: "assets/cake.jpg",price: "6.127",),
//   Meal_Least(id: 'm3', title: "Fish", image: "assets/cake.jpg", price: "6.127",),
//   Meal_Least(id: 'm4', title: "Fish", image: "assets/cake.jpg", price: "6.127"),
//   Meal_Least(id: 'm5', title: "Fish", image: "assets/cake.jpg", price: "6.127",),
//   Meal_Least(id: 'm6', title: "Fish", image: "assets/cake.jpg", price: "6.127"),

//];
// List <List<int>>> DUMMY_MEALS =[
//   Meal(id: 'm1', title: "Fish",image: "assets/cake.jpg",price: "6.127",),
//   Meal_List(id: 'm2', title: "Fish", image: "assets/cake.jpg",price: "6.127",),
//   Meal_Least(id: 'm3', title: "Fish", image: "assets/cake.jpg", price: "6.127",),
//   Meal_Least(id: 'm4', title: "Fish", image: "assets/cake.jpg", price: "6.127"),
//   Meal_Least(id: 'm5', title: "Fish", image: "assets/cake.jpg", price: "6.127",),
//   Meal_Least(id: 'm6', title: "Fish", image: "assets/cake.jpg", price: "6.127"),
// ];
