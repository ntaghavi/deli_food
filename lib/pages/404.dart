import 'package:flutter/material.dart';
class FourOFour extends StatelessWidget {
  const FourOFour({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('404',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
    );
  }
}