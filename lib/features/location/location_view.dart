import 'package:flutter/material.dart';
import 'package:untitled/features/location/view/widget/location_view_body.dart';

class LocationView extends StatelessWidget {
  const LocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LocationViewBody(),
    );
  }
}
