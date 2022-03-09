import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {


  UserInfo(
      {Key? key,
        this.email = '',
        this.first_name = '',
        this.last_name = '',
        this.mobile_number = '',
        })
      : super(key: key);
  String first_name = '';
  String last_name = '';
  String mobile_number = '';
  String email = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            height: 400,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Name: $first_name $last_name", style: TextStyle(fontSize: 30),),
                Text("Email: $email", style: TextStyle(fontSize: 30),),
                Text("Moblie Number: $mobile_number", style: TextStyle(fontSize: 30),),
              ],
            ),
          ),
        ),
    );
  }
}