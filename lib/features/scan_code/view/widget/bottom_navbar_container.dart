import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled/core/api_actions/models.dart';
import 'package:untitled/core/api_actions/provider_method.dart';
import 'package:untitled/features/product_details/product_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:untitled/features/scan_code/view/widget/red_scan_bottom.dart';
import 'package:provider/provider.dart';

import '../../../../utilies/color_data.dart';
import 'bottom_nav_icon.dart';
class BottomNavBarContainer extends StatefulWidget {
  const BottomNavBarContainer({Key? key}) : super(key: key);

  @override
  State<BottomNavBarContainer> createState() => _BottomNavBarContainerState();
}

class _BottomNavBarContainerState extends State<BottomNavBarContainer> {
  String scanBarcode = 'Unknown';

  String scannedResult = "";
  late Products scannedProd;
  @override
  void initState() {
    super.initState();
  }

  Future<void> startBarcodeScanStream() async {
    FlutterBarcodeScanner.getBarcodeStreamReceiver(
        '#ff6666', 'Cancel', true, ScanMode.DEFAULT)!
        .listen((barcode) => print(barcode));
  }

  Future<void> scanQRandBarcode() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.DEFAULT);
      print("Your Result is : " + barcodeScanRes);

      scannedProd = Provider.of<ProviderProduct>(context, listen: false).getScannedProduct(barcodeScanRes);

    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
    if (!mounted) return;
    setState(() {
      scanBarcode = barcodeScanRes;
    /*  Fluttertoast.showToast(
          msg: (scannedProd != null) ? ('${scannedProd.title!}\nscan successful !!') : "No Product Found!",
          gravity: ToastGravity.CENTER,
        backgroundColor: Colors.grey,
          fontSize: 25,
        textColor: Colors.black,
      );*/
       showDialog(
          context: context,
          builder: (context) => SizedBox(
            height: 60,
            width: 60,
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              insetPadding: EdgeInsets.zero,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              scrollable: false,
              contentPadding: EdgeInsets.zero,
              title: const Text('Scan code'),
              content: Center(
                child: (scannedProd != null) ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(scannedProd.title!),
                    const  SizedBox(height: 30,),
                    ElevatedButton(onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ProductDetailsView(
                                products: scannedProd,
                              )));
                    }, child: Text('Go To Product'))
                  ],
                ):const Text("No Product Found!"),
              ),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BottomNavIcon(text: 'My order', iconData: Icons.file_present_outlined,),
          GestureDetector(onTap: (){
            scanQRandBarcode();
           // _showToast(context);
            },child: RedScanBottom()),
          BottomNavIcon(text: 'More', iconData: Icons.menu,),
        ],
      ),
    );
  }
}
