import 'package:flutter/material.dart';
import 'package:practica2_register_screen/models/shoes.dart';

final listCategory = ['Economic', 'Clasic', 'New'];

final listShoes = {
  Shoes(
    'S20',
    'Samsung',
    '\$120.00',
    4,
    [
      ImageShoes(
        'assets/shoes/S20_001.png',
        Color.fromARGB(255, 88, 144, 249),
      ),
      ImageShoes(
        'assets/shoes/S20_002.png',
        Color.fromARGB(255, 195, 75, 189),
      ),
      ImageShoes(
        'assets/shoes/S20_003.png',
        Color.fromARGB(255, 100, 56, 170),
      ),
      ImageShoes(
        'assets/shoes/S20_004.png',
        Color.fromARGB(255, 97, 97, 97),
      ),
    ],
  ),
  Shoes(
    'S21',
    'Samsung',
    '\$150.00',
    4,
    [
      ImageShoes(
        'assets/shoes/S21_001.png',
        Color.fromARGB(255, 180, 155, 189),
      ),
      ImageShoes(
        'assets/shoes/S21_002.png',
        Color.fromARGB(255, 147, 68, 157),
      ),
      ImageShoes(
        'assets/shoes/S21_003.png',
        Color.fromARGB(255, 148, 200, 205),
      ),
      ImageShoes(
        'assets/shoes/S21_004.png',
        Color.fromARGB(255, 164, 149, 119),
      ),
    ],
  ),
  Shoes(
    'S24',
    'Samsung',
    '\$180.00',
    4,
    [
      ImageShoes(
        'assets/shoes/S24_001.png',
        Color.fromARGB(255, 205, 204, 170),
      ),
      ImageShoes(
        'assets/shoes/S24_002.png',
        Color.fromARGB(255, 61, 61, 123),
      ),
      ImageShoes(
        'assets/shoes/S24_003.png',
        Color.fromARGB(255, 191, 162, 83),
      ),
      ImageShoes(
        'assets/shoes/S24_004.png',
        Color.fromARGB(255, 146, 171, 149),
      ),
    ],
  ),
};
