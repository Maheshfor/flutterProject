import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloproject/userinformation.dart';



class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key? key}) : super(key: key);

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  String firstname = '';
  String lastname = '';
  String mobailnumber = '';

  String emailid = '';
  String? errorp ;

  bool password = false;
  String val1 = 'male';
  String val2 = 'female';
  String gender = 'male';
  bool crecket = false;
  bool football = false;

  TextEditingController emailidCotroller = TextEditingController();
  TextEditingController firstnameCotroller = TextEditingController();
  TextEditingController lastnameCotroller = TextEditingController();
  TextEditingController mobailnumberCotroller = TextEditingController();
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
                          controller: firstnameCotroller,
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
                          controller: lastnameCotroller,
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
                    controller: emailidCotroller,
                    onChanged: (val) {
                      setState(() {
                        errorp = (val.isEmpty ? 'enter valid emailid' : null)!;
                      });
                    },
                    decoration: InputDecoration(

                      prefixIcon: const Icon(Icons.email),
                      errorText: errorp,
                      label: const Text(
                        'emailid',
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
                    controller: mobailnumberCotroller,
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
                            password = !password;
                          });
                        },
                        icon: Icon(
                            password ? Icons.visibility : Icons.visibility_off),
                      ),

                      label: const Text(
                        'password',
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
                    obscureText: password,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Blood group', style: TextStyle(fontSize: 20),),
                      DropdownButton<String>(
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
                                    value: val1,
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
                                    value: val2,
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
                                    value: crecket,
                                    onChanged: (val) {
                                      setState(() {
                                        crecket = val!;
                                      });
                                    },
                                  ),
                                  const Text('Football'),
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: football,
                                    onChanged: (val) {
                                      setState(() {
                                        football = val!;
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
                    onPressed: () {
                      if (Platform.isAndroid) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UserInfo(
                              email: emailidCotroller.text,
                              first_name: firstnameCotroller.text,
                              last_name: lastnameCotroller.text,
                              mobile_number: mobailnumberCotroller.text,
                            ),
                          ),
                        );
                      } else {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (context) => UserInfo(),
                          ),
                        );
                      }
                    },
                    child: const Text('submit'),
                    color: Colors.blue,
                    elevation: 5,
                  ),

                ],
              ) ,
            )

        ),

      ),

    );
  }
}
