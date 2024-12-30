import 'dart:developer';

import 'package:flutter/material.dart';

class SetttingPage extends StatefulWidget {
  const SetttingPage({super.key});

  @override
  State<SetttingPage> createState() => _SetttingPageState();
}

class _SetttingPageState extends State<SetttingPage> {
  GlobalKey<FormState> key = GlobalKey<FormState>();
  final TextEditingController _Fnamecontroller = TextEditingController();
  final TextEditingController _Datecontroller = TextEditingController();
  final TextEditingController _Passcontroller = TextEditingController();
  final TextEditingController _Oldpasscontroller = TextEditingController();
  final TextEditingController _Newpasscontroller = TextEditingController();
  final TextEditingController _Repnewpasscontroller = TextEditingController();
  bool sales = false;
  bool newarrivls = false;
  bool delivery = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.98),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Icon(
              Icons.arrow_back_ios,
              size: 18,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16),
            child: Icon(
              Icons.search,
              size: 22,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Setting',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 27,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text('Personal information'),
              const SizedBox(
                height: 15,
              ),
              Form(
                key: key,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This Feild cannot be empty';
                        }
                        return null;
                      },
                      controller: _Fnamecontroller,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        hintText: 'Full name',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 17.0, horizontal: 16.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            borderSide:
                                BorderSide(width: .5, color: Colors.white)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            borderSide:
                                BorderSide(width: .5, color: Colors.red)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            borderSide:
                                BorderSide(width: .5, color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            borderSide:
                                BorderSide(width: .5, color: Colors.grey)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This Feild cannot be empty';
                        }
                        return null;
                      },
                      controller: _Datecontroller,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        hintText: 'Date of Birth',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 17.0, horizontal: 16.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            borderSide:
                                BorderSide(width: .5, color: Colors.white)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            borderSide:
                                BorderSide(width: .5, color: Colors.red)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            borderSide:
                                BorderSide(width: .5, color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            borderSide:
                                BorderSide(width: .5, color: Colors.grey)),
                      ),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Password',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              backgroundColor: Colors.white.withOpacity(.98),
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: const EdgeInsets.all(22),
                                  child: Column(
                                    children: [
                                      const Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Password Change',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      TextFormField(
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'This Feild cannot be empty';
                                          }
                                          return null;
                                        },
                                        controller: _Oldpasscontroller,
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        decoration: const InputDecoration(
                                          hintText: 'Old Password',
                                          labelStyle: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                          ),
                                          filled: true,
                                          fillColor: Colors.white,
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 17.0, horizontal: 16.0),
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              borderSide: BorderSide(
                                                  width: .5,
                                                  color: Colors.white)),
                                          errorBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              borderSide: BorderSide(
                                                  width: .5,
                                                  color: Colors.red)),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              borderSide: BorderSide(
                                                  width: .5,
                                                  color: Colors.white)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              borderSide: BorderSide(
                                                  width: .5,
                                                  color: Colors.grey)),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            'Forgot Password ?',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      TextFormField(
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'This Feild cannot be empty';
                                          }
                                          return null;
                                        },
                                        controller: _Newpasscontroller,
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        decoration: const InputDecoration(
                                          hintText: 'New Password',
                                          labelStyle: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                          ),
                                          filled: true,
                                          fillColor: Colors.white,
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 17.0, horizontal: 16.0),
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              borderSide: BorderSide(
                                                  width: .5,
                                                  color: Colors.white)),
                                          errorBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              borderSide: BorderSide(
                                                  width: .5,
                                                  color: Colors.red)),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              borderSide: BorderSide(
                                                  width: .5,
                                                  color: Colors.white)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              borderSide: BorderSide(
                                                  width: .5,
                                                  color: Colors.grey)),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      TextFormField(
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'This Feild cannot be empty';
                                          }
                                          return null;
                                        },
                                        controller: _Repnewpasscontroller,
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        decoration: const InputDecoration(
                                          hintText: 'Repeat New Password',
                                          labelStyle: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                          ),
                                          filled: true,
                                          fillColor: Colors.white,
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 17.0, horizontal: 16.0),
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              borderSide: BorderSide(
                                                  width: .5,
                                                  color: Colors.white)),
                                          errorBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              borderSide: BorderSide(
                                                  width: .5,
                                                  color: Colors.red)),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              borderSide: BorderSide(
                                                  width: .5,
                                                  color: Colors.white)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              borderSide: BorderSide(
                                                  width: .5,
                                                  color: Colors.grey)),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      SizedBox(
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            if (key.currentState!.validate()) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                    content:
                                                        Text('Form is Valid')),
                                              );
                                              log('''
User Name: ${_Fnamecontroller.text}
User Date of birth: ${_Datecontroller.text}                                                            
User Password: ${_Passcontroller.text}
User Old Password: ${_Oldpasscontroller.text}
User New Password: ${_Newpasscontroller.text}
User Repeat Password: ${_Repnewpasscontroller.text}                               
                              ''');
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                    content: Text(
                                                        'Please fix the errors')),
                                              );
                                            }
                                          },
                                          style: ButtonStyle(
                                            padding: WidgetStateProperty.all(
                                              const EdgeInsets.symmetric(
                                                  vertical: 3, horizontal: 10),
                                            ),
                                            backgroundColor:
                                                WidgetStateProperty.all(
                                                    Colors.red),
                                            shape: WidgetStateProperty.all(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                          ),
                                          child: const Text(
                                            'SAVE PASSWORD',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: const Text(
                            'Change',
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This Feild cannot be empty';
                        }
                        return null;
                      },
                      controller: _Passcontroller,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: const InputDecoration(
                        hintText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 17.0, horizontal: 16.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            borderSide:
                                BorderSide(width: .5, color: Colors.white)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            borderSide:
                                BorderSide(width: .5, color: Colors.red)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            borderSide:
                                BorderSide(width: .5, color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            borderSide:
                                BorderSide(width: .5, color: Colors.grey)),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text(
                              'Notifications',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Sales',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            const Spacer(),
                            Transform.scale(
                              scale: 0.5,
                              child: Switch(
                                value: sales,
                                onChanged: (bool value) {
                                  setState(() {
                                    sales = value;
                                  });
                                },
                                activeColor: Colors.green,
                                inactiveThumbColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'New arrivals',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            const Spacer(),
                            Transform.scale(
                              scale: 0.5,
                              child: Switch(
                                value: newarrivls,
                                onChanged: (bool value) {
                                  setState(() {
                                    newarrivls = value;
                                  });
                                },
                                activeColor: Colors.green,
                                inactiveThumbColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'Delivery status change',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            const Spacer(),
                            Transform.scale(
                              scale: 0.5,
                              child: Switch(
                                value: delivery,
                                onChanged: (bool value) {
                                  setState(() {
                                    delivery = value;
                                  });
                                },
                                activeColor: Colors.green,
                                inactiveThumbColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
