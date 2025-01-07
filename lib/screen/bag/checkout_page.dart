import 'package:e_cmrc/screen/bag/paymentcard_page.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
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
          child: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        title: const Text(
          'Checkout',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Shipping address',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(7)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: .5,
                      offset: const Offset(0, .5),
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Jhon Doe',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            'Change',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '3 Newbridge Court',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Chino Hills, CA 91709,United States',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 60,),
              Column(
                children: [
                  const Row(
                    children: [
                      Text('Payment',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 17),),
                      Spacer(),
                      Text('Change',style: TextStyle(color: Colors.red,fontSize: 15,),),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/mastercard-icon-1024x793-xinze39n.png',
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      const Text(
                        '****',
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        '****',
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        '****',
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        '3947',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 25,),
              const Text('Delivery method',style: TextStyle(color: Colors.black,fontSize: 17),),
              Row(
                children: [
                  Image.asset('assets/images/fedex.png',fit: BoxFit.cover,height: 120,width: 100,),
                  const SizedBox(width: 10,),
                  Image.asset('assets/images/dhl.png',fit: BoxFit.cover,height: 120,width: 100,),
                  const SizedBox(width: 18,),
                  Image.asset('assets/images/usps.png',fit: BoxFit.cover,height: 120,width: 100,),
                ],
              ),
              const SizedBox(height: 10,),
              Column(
                children: [
                  const Row(
                    children: [
                      Text('Order:',style: TextStyle(color: Colors.grey,fontSize: 15),),
                      Spacer(),
                      Text('112\$',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),)
                    ],
                  ),
                  const SizedBox(height: 10,),
                   const Row(
                    children: [
                      Text('Delivery:',style: TextStyle(color: Colors.grey,fontSize: 15),),
                      Spacer(),
                      Text('15\$',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),)
                    ],
                  ),
                  const SizedBox(height: 10,),
                   const Row(
                    children: [
                      Text('Summary:',style: TextStyle(color: Colors.grey,fontSize: 15),),
                      Spacer(),
                      Text('127\$',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),)
                    ],
                  ),
                  const SizedBox(height: 20,),
                  InkWell(
                    onTap: () {
                      // ignore: prefer_const_constructors
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentcardPage()));
                    },
                    child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: null,
                      style: ButtonStyle(
                          padding: WidgetStateProperty.all(
                             const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 20),
                          ),
                          backgroundColor: const WidgetStatePropertyAll(Colors.red),
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)))),
                      child: const Text(
                        'SUBMIT ORDER',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
