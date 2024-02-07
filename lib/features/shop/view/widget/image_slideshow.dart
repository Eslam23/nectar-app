import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ImageSlideShow extends StatelessWidget {
  const ImageSlideShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      children: [
        Image.asset('name'),
        Image.asset('name'),
        Image.asset('name'),
      ],
    );
  }
}
