import 'package:flutter/material.dart';
import 'package:untitled/utilies/color_data.dart';

class MyBillBody extends StatelessWidget {
  const MyBillBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Bill'),
        leadingWidth: 40,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.only(left: 4, top: 0, bottom: 0),
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * .04),
            child: Icon(
              Icons.arrow_back_ios,
              size: 12,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: ColorsData.basicColor, width: .5)),
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: ListView.builder(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .02,
                bottom: MediaQuery.of(context).size.height * .02),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .04,
                  top: MediaQuery.of(context).size.height * .01,
                  bottom: MediaQuery.of(context).size.height * .01,
                  right: MediaQuery.of(context).size.width * .19,
                ),
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .05,
                  right: MediaQuery.of(context).size.width * .05,
                  bottom: MediaQuery.of(context).size.height * .02,
                ),
                width: MediaQuery.of(context).size.width * .6,
                height: MediaQuery.of(context).size.height * .2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: ColorsData.basicColor, width: .5),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You Requested',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Date : 1 / 4 / 2020',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                        Text(
                          'Time : ${12.00}am',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                        Text(
                          'To : Mahmoud',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                        Text(
                          'Via :  Delivery',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                        Text(
                          'Total :  ${30}\$',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .008,
                      ),
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * .02,
                          right: MediaQuery.of(context).size.width * .02,
                          top: MediaQuery.of(context).size.height * .002,
                          bottom: MediaQuery.of(context).size.height * .002),
                      width: MediaQuery.of(context).size.width * .29,
                      height: MediaQuery.of(context).size.height * .03,
                      decoration: BoxDecoration(
                        color: Color(0xFFD71515),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        'Don\'t arrive yet',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
