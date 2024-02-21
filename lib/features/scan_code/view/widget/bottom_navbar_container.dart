import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:untitled/features/scan_code/view/widget/red_scan_bottom.dart';

import '../../../../utilies/color_data.dart';
import 'bottom_nav_icon.dart';
class BottomNavBarContainer extends StatefulWidget {
  const BottomNavBarContainer({Key? key}) : super(key: key);

  @override
  State<BottomNavBarContainer> createState() => _BottomNavBarContainerState();
}

class _BottomNavBarContainerState extends State<BottomNavBarContainer> {
  String scanBarcode = 'Unknown';

  @override
  void initState() {
    super.initState();
  }
  Future<void> startBarcodeScanStream() async {
    FlutterBarcodeScanner.getBarcodeStreamReceiver('#ff6666', 'Cancel', true, ScanMode.DEFAULT)!.listen((barcode) => print(barcode));}
  Future<void> scanQRandBarcode() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode('#ff6666', 'Cancel', true, ScanMode.DEFAULT);
      print(barcodeScanRes);} on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';}
    if (!mounted) return ;
    setState(() {
      scanBarcode = barcodeScanRes;
      showDialog(context: context, builder: (context)=>AlertDialog(
        title: const Text('Scan code'),
        content: Center(
          child: Text('Success process !!'),
        ),
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height * .2,
      decoration: BoxDecoration(
        color: ColorsData.basicColor.withOpacity(.7),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BottomNavIcon(text: 'My order', iconData: Icons.file_present_outlined,),
              GestureDetector(onTap: (){
                scanQRandBarcode();
               // _showToast(context);
                },child: RedScanBottom()),
              BottomNavIcon(text: 'More', iconData: Icons.menu,),
            ],
          )),
    );
  }
}
