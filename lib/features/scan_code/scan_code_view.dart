import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/features/scan_code/view/widget/bottom_navbar_container.dart';
import 'package:untitled/features/scan_code/view/widget/scan_code_view_body.dart';
import 'package:untitled/utilies/color_data.dart';

class ScanCodeView extends StatelessWidget {
  const ScanCodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.black.withOpacity(.5)
        ),
        backgroundColor: Colors.white,
        actions: [
          Text('Scan',style: TextStyle(color: ColorsData.basicColor,fontSize: 18),),
          SizedBox(width: MediaQuery.of(context).size.width *.05,),

        ],
      ),
      bottomNavigationBar:BottomNavBarContainer(),
      body: ScanCodeViewBody(),
    );
  }
}
