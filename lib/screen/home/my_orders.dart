import 'package:e_cmrc/screen/profile/order_details.dart';
import 'package:flutter/material.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  final orderList = [
    {
      'order_number': 1947034,
      'order date': '05-12-2019',
      'tracking number': 'IW3475453455',
      'quantity': '3',
      'total_amount': '112\$',
    },
    {
      'order_number': 19847097,
      'order date': '06-12-2019',
      'tracking number': 'ZW4575483488',
      'quantity': '4',
      'total_amount': '118\$',
    },
    {
      'order_number': 1137727,
      'order date': '07-12-2019',
      'tracking number': 'ZC3867343408',
      'quantity': '5',
      'total_amount': '239\$',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
            length: 3,
            child: Scaffold(
              backgroundColor: Colors.white,
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
                bottom: const TabBar(indicatorColor: Colors.black, tabs: [
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      'Delivered',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Processing',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Cancelled',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                ]),
                title: const Text(
                  'My Orders',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              body: TabBarView(
                children: [
                ListView.builder(
                    itemCount: orderList.length,
                    itemBuilder: (context, index) {
                      final item = orderList[index];
                      return Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(4),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Order No${item['order_number']}',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                                const Spacer(),
                                Text(
                                  '${item['order date']}',
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 13),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Tracking number:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                                Text(
                                  '  ${item['tracking number']}',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Quantity :',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                                Text(
                                  '  ${item['quantity']}',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Spacer(),
                                const Text(
                                  'Total Amount:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                                Text(
                                  '  ${item['total_amount']}',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 6, horizontal: 18),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 0.5, color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderDetails()));
                                    },
                                    child: const Text(
                                    'Deatils',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  ),
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
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ListView.builder(
                    itemCount: orderList.length,
                    itemBuilder: (context, index) {
                      final item = orderList[index];
                      return Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(4),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Order No${item['order_number']}',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                                const Spacer(),
                                Text(
                                  '${item['order date']}',
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 13),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Tracking number:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                                Text(
                                  '  ${item['tracking number']}',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Quantity :',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                                Text(
                                  '  ${item['quantity']}',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Spacer(),
                                const Text(
                                  'Total Amount:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                                Text(
                                  '  ${item['total_amount']}',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 6, horizontal: 18),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 0.5, color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderDetails()));
                                    },
                                    child: const Text(
                                    'Deatils',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  ),
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
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ListView.builder(
                    itemCount: orderList.length,
                    itemBuilder: (context, index) {
                      final item = orderList[index];
                      return Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(4),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Order No${item['order_number']}',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                                const Spacer(),
                                Text(
                                  '${item['order date']}',
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 13),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Tracking number:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                                Text(
                                  '  ${item['tracking number']}',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Quantity :',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                                Text(
                                  '  ${item['quantity']}',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Spacer(),
                                const Text(
                                  'Total Amount:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                                Text(
                                  '  ${item['total_amount']}',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 6, horizontal: 18),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 0.5, color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderDetails()));
                                    },
                                    child: const Text(
                                    'Deatils',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  ),
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
                            )
                          ],
                        ),
                      );
                    },
                  ),
                
                ],
              ),
            )));
  }
}
