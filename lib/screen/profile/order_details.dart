import 'package:e_cmrc/data/orderlist_json.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}class _OrderDetailsState extends State<OrderDetails> {
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
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            'Order Details',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    'Order No1947034',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text(
                    '05-12-2019',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    'Tracking Number:',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  const Text(
                    '  IW3475453455',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  Text(
                    'Delivered',
                    style: TextStyle(
                      color: Colors.green.withOpacity(.6),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('3 items'),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: orderdetails.length,
                itemBuilder: (context, index) {
                  final item = orderdetails[index];
                  return Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.90),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(3),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 0,
                          blurRadius: .5,
                          offset: const Offset(0, .5),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          item['image']!,
                          width: 85,
                          height: 85,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item['title']!,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              item['detail']!,
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 10),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const Text(
                                  'Color:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                ),
                                Text(
                                  ' ${item['color']}',
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                                const SizedBox(width: 20),
                                const Text(
                                  'Size:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                ),
                                Text(
                                  ' ${item['size']}',
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const Text(
                                  'Units:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Text(
                                  ' ${item['units']}',
                                  style: const TextStyle(fontSize: 10),
                                ),
                                const SizedBox(width: 160),
                                Text(
                                  '${item['price']}',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                'Order information ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shipping Address:',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Text(
                        '3 NewBridge Court,Chino Hills,CA 91709,United States',
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Payment method:',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      const SizedBox(width: 10),
                      Image.asset(
                        'assets/images/mastercard-icon-1024x793-xinze39n.png',
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      const Text(
                        '****',
                        style: TextStyle(fontSize: 12),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        '****',
                        style: TextStyle(fontSize: 12),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        '****',
                        style: TextStyle(fontSize: 12),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        '3947',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Delivery method:',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('FedEx, 3 days, 15\$')
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Discount:',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      SizedBox(
                        width: 49,
                      ),
                      Text('10% Personal promo code')
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Delivery method:',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('FedEx, 3 days, 15\$')
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Total Amount:',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text('213\$')
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 50),
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.black),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Text(
                      'Recorder',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 33),
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(.80),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Text(
                      'Leave feedback',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
