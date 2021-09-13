import 'package:flutter/material.dart';

class DataBaseStatus extends StatefulWidget {
  const DataBaseStatus({Key? key}) : super(key: key);
  @override
  DataBaseStatusState createState() => DataBaseStatusState();
}

class DataBaseStatusState extends State<DataBaseStatus> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Container(
        color: Colors.blue,
      ),
    );
  }
}
