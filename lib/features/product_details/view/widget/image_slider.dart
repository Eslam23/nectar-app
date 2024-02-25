import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:untitled/utilies/color_data.dart';
class ImageSlider extends StatefulWidget {
  final String img;
  const ImageSlider({Key? key, required this.img}) : super(key: key);

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
        Image.network(widget.img,fit: BoxFit.cover,),
        Image.network(widget.img,fit: BoxFit.cover,),
        Image.network(widget.img,fit: BoxFit.cover,),
      ],
    );

  }
}
