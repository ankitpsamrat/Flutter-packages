import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class QuickAlertPackage extends StatelessWidget {
  const QuickAlertPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quick Alert Package'),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              child: Text('Success'),
              onPressed: () {
                QuickAlert.show(
                  context: context,
                  type: QuickAlertType.success,
                  text: 'Transaction Completed Successfully!',
                );
              },
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: ElevatedButton(
              child: Text('Error'),
              onPressed: () {
                QuickAlert.show(
                  context: context,
                  type: QuickAlertType.error,
                  title: 'Oops...',
                  text: 'Sorry, something went wrong',
                );
              },
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: ElevatedButton(
              child: Text('Warning'),
              onPressed: () {
                QuickAlert.show(
                  context: context,
                  type: QuickAlertType.warning,
                  text: 'You just broke protocol',
                );
              },
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: ElevatedButton(
              child: Text('Info'),
              onPressed: () {
                QuickAlert.show(
                  context: context,
                  type: QuickAlertType.info,
                  text: 'Buy two, get one free',
                );
              },
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: ElevatedButton(
              child: Text('Confirm'),
              onPressed: () {
                QuickAlert.show(
                  context: context,
                  type: QuickAlertType.confirm,
                  text: 'Do you want to logout',
                  confirmBtnText: 'Yes',
                  cancelBtnText: 'No',
                  confirmBtnColor: Colors.green,
                );
              },
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: ElevatedButton(
              child: Text('Loading'),
              onPressed: () {
                QuickAlert.show(
                  context: context,
                  type: QuickAlertType.loading,
                  title: 'Loading',
                  text: 'Fetching your data',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
