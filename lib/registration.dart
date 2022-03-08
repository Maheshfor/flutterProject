import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:untitled/userInfo.dart';



class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key? key}) : super(key: key);

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  String fname = '';
  String lname = '';
  String mobileNum = '';

  String email = '';
  String? errorp ;

  bool passwor = false;
  String r1 = 'male';
  String r2 = 'female';
  String gender = 'male';
  bool dancing = false;
  bool coding = false;
  bool singing = false;

  TextEditingController emailCotroller = TextEditingController();
  TextEditingController fNameCotroller = TextEditingController();
  TextEditingController lNameCotroller = TextEditingController();
  TextEditingController mobileNumCotroller = TextEditingController();
  String dropdownValue = 'A+';



  GlobalKey<FormState> key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Rgistration Form'),
        ),
        body: Center(
          child:SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: fNameCotroller,
                        decoration: InputDecoration(
                            label: const Text(
                              'First Name',
                              style: TextStyle(fontSize: 20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 2),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 3),
                            ),
                            ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        controller: lNameCotroller,
                        decoration: InputDecoration(
                          label: const Text(
                            'Last Name',
                            style: TextStyle(fontSize: 20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            borderSide: const BorderSide(
                                color: Colors.black, width: 2),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            borderSide: const BorderSide(
                                color: Colors.black, width: 3),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: emailCotroller,
                  onChanged: (val) {
                    setState(() {
                      errorp = (val.isEmpty ? 'enter valid Email' : null)!;
                    });
                  },
                  decoration: InputDecoration(

                      prefixIcon: const Icon(Icons.email),
                      errorText: errorp,
                      label: const Text(
                        'Email',
                        style: TextStyle(fontSize: 20, color: Colors.black87),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        borderSide:
                        const BorderSide(color: Colors.black, width: 2),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        borderSide:
                        const BorderSide(color: Colors.black, width: 3),
                      ),

                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: mobileNumCotroller,
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(

                    label: const Text(
                      'Mobile No',
                      style: TextStyle(fontSize: 20, color: Colors.black87),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      borderSide:
                      const BorderSide(color: Colors.black, width: 3),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      borderSide:
                      const BorderSide(color: Colors.black, width: 3),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwor = !passwor;
                        });
                      },
                      icon: Icon(
                          passwor ? Icons.visibility : Icons.visibility_off),
                    ),

                    label: const Text(
                      'Password',
                      style: TextStyle(fontSize: 20, color: Colors.black87),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                      const BorderSide(color: Colors.black, width: 2),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                      const BorderSide(color: Colors.black, width: 3),
                    ),
                  ),
                  obscureText: passwor,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('select Blood group', style: TextStyle(fontSize: 20),),
                    DropdownButton<String>(
                      elevation: 3,
                      focusColor: Colors.grey,
                      iconEnabledColor: Colors.blueGrey,
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_downward),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>['A+', 'AB+', 'O+', 'B+', 'B-', 'AB-']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          'gender',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Radio(
                                  value: r1,
                                  groupValue: gender,
                                  onChanged: (val) {
                                    setState(() {
                                      gender = val.toString();
                                    });
                                  }),
                              const Text('Male'),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: r2,
                                  groupValue: gender,
                                  onChanged: (val) {
                                    setState(() {
                                      gender = val.toString();
                                    });
                                  }),
                              const Text('Female'),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          'Hobbies',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child:SingleChildScrollView(
                        child: Row(
                          children: [
                            Row(
                              children: [

                                Checkbox(
                                  value: dancing,
                                  onChanged: (val) {
                                    setState(() {
                                      dancing = val!;
                                    });
                                  },
                                ),
                                const Text('Football'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: coding,
                                  onChanged: (val) {
                                    setState(() {
                                      coding = val!;
                                    });
                                  },
                                ),
                                const Text('cricket'),
                              ],
                            ),
                          ],
                        ),
                      ),


                    ),
                  ],
                ),
                MaterialButton(
                  color: Colors.green,
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text('SUBMIT'),
                  onPressed: () {
                  },
                ),

              ],
            ) ,
          )

        ),

    ),

    );
  }
}
