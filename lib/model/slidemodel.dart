// import 'package:flutter/material.dart';

// import 'package:flutter/cupertino.dart';

import 'package:flutter/cupertino.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
   required this.imageUrl, 
   required this.title, 
   required this.description
   
});


}

final slideList = [
  Slide(
  imageUrl:'image/save.png', 
  title: 'Save the planet',
  description: 'Sanitation is a must on this planet.',
  ),
  Slide(
  imageUrl:'image/save.png', 
  title: 'Save the planet',
  description: 'Sanitation is a must on this planet.',
  ),
  Slide(
  imageUrl:'image/save.png', 
  title: 'Save the planet',
  description: 'Sanitation is a must on this planet.',
  ),
];