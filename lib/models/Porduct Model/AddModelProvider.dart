import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' as Io;

class Product {
  String category;
  String name;
  int price;
  String description;
  Product(String name, int price, String desc, String category) {
    this.name = name;
    this.price = price;
    this.description = description;
    this.category = category;
  }
}

class AddModelProvider extends ChangeNotifier {
  Image _image;
  String _img64;
  Product _product;
  String _mainValue = 'Vegetable';
  String get mainValaue => _mainValue;
  String get img64 => _img64;
  List<String> _categories = ['Vegetable', 'Fruit', 'Grocery'];

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
    notifyListeners();
    print(_product.category + "frompr");
  }
}
