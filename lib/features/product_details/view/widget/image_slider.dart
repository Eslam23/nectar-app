import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:untitled/utilies/color_data.dart';
class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {

  @override
  Widget build(BuildContext context) {
    return  ImageSlideshow(
      indicatorColor: ColorsData.basicColor,
      indicatorPadding: 6,
      indicatorRadius: 5,
      onPageChanged: (value) {

      },
      autoPlayInterval: 3000,
      isLoop: true,
      children: [
        Image.asset(
          'asset/home/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'asset/home/4215936-pulses-png-8-png-image-pulses-png-409_409 1.png',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'asset/home/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png',
          fit: BoxFit.contain,
        ),
      ],
    );

  }
}
