import 'package:flutter/material.dart';

class Category{
  final String title;
  final String id;
  final Color color;

  const Category({
    required this.id,
    required this.title,
    this.color = Colors.greenAccent,
});
}