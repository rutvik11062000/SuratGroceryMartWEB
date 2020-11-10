import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' as Io;

import 'package:suratgrocerymartweb/services/firebaseSerices.dart';

class Product {
  String productID;
  String category;
  String name;
  int price;
  String description;
  Product(String name, int price, String desc, String category) {
    this.name = name;
    this.price = price;
    this.description = desc;
    this.category = category;
  }

  Map<String, dynamic> toJSON() => {
        'Category': category,
        'name': name,
        'price': price,
        'description': description,
        'productID': productID == null ? '' : productID,
      };
}

class AddModelProvider extends ChangeNotifier {
  // DBModel db;
  // Map<String, dynamic> _map;

  Image _image;
  String _img64;
  Product _product;
  String _mainValue = 'Vegetable';
  String get mainValaue => _mainValue;
  String get img64 => _img64;
  List<String> _categories = ['Vegetable', 'Fruit', 'Grocery'];
  Map<String, dynamic> get map => _product.toJSON();

  List<String> get categories => _categories;
  Image get image => _image;

  Product get product => _product;
  void updateMainValue(String newVlue) {
    _mainValue = newVlue;
    notifyListeners();
  }

  void setImage(Image newImage) {
    _image = newImage;
    notifyListeners();
  }

  void updateProduct(String name, int price, String desc) {
    _product = new Product(name, price, desc, _mainValue);
    print(_product.toJSON());
    // db.uploadNewProduct(_product.toJSON());
    notifyListeners();
    // print(_product.category + "frompr");
  }
}
