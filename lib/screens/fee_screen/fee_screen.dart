import 'package:nLearnPlus/constants.dart';
import 'package:flutter/material.dart';

import 'data/fee_data.dart';
import 'widgets/fee_widgets.dart';

class FeeScreen extends StatelessWidget {
  const FeeScreen({Key? key}) : super(key: key);
  static String routeName = 'FeeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fee'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: TopBdrRadNlearn,
                color: OtherColorNlearn,
              ),
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.all(DefPadNlearn),
                  itemCount: fee.length,
                  itemBuilder: (context, int index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: DefPadNlearn),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(DefPadNlearn),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(DefPadNlearn),
                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: TextLightColorNlearn,
                                  blurRadius: 2.0,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                FeeDetailRow(
                                  title: 'Receipt No',
                                  statusValue: fee[index].receiptNo,
                                ),
                                SizedBox(
                                  height: DefPadNlearn,
                                  child: Divider(
                                    thickness: 1.0,
                                  ),
                                ),
                                FeeDetailRow(
                                  title: 'Month',
                                  statusValue: fee[index].month,
                                ),
                                sizedBox,
                                FeeDetailRow(
                                  title: 'Payment Date',
                                  statusValue: fee[index].date,
                                ),
                                sizedBox,
                                FeeDetailRow(
                                  title: 'Status',
                                  statusValue: fee[index].paymentStatus,
                                ),
                                sizedBox,
                                SizedBox(
                                  height: DefPadNlearn,
                                  child: Divider(
                                    thickness: 1.0,
                                  ),
                                ),
                                FeeDetailRow(
                                  title: 'Total Amount',
                                  statusValue: fee[index].totalAmount,
                                ),
                              ],
                            ),
                          ),
                          FeeButton(
                              title: fee[index].btnStatus,
                              iconData: fee[index].btnStatus == 'Paid'
                                  ? Icons.download_outlined
                                  : Icons.arrow_forward_outlined,
                              onPress: () {})
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
