import 'package:e_cmrc/data/productlist_json.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
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
              Icons.share,
              size: 22,
            ),
          ),
        ],
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            'Short dress',
            style: TextStyle(
                color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/image.07.png',
              width: double.infinity,
              height: 540,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.red),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: InkWell(
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Size',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 70),
                          Icon(
                            Icons.arrow_downward,
                            size: 16,
                          ),
                        ],
                      ),
                      onTap: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.white.withOpacity(.98),
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: const EdgeInsets.all(17),
                              child: Column(
                                children: [
                                  const Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Select Size',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 40),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.black),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        child: const Text(
                                          'XS',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 45),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.black),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        child: const Text(
                                          'S',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 45),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.black),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        child: const Text(
                                          'M',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 45),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.black),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        child: const Text(
                                          'L',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 40),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.black),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        child: const Text(
                                          'XL',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 70,
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        'Size info',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 17),
                                      ),
                                      Spacer(),
                                      Icon(Icons.arrow_forward_ios, size: 14),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 60,
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: null,
                                      style: ButtonStyle(
                                        padding: WidgetStateProperty.all(
                                          const EdgeInsets.symmetric(
                                              vertical: 12, horizontal: 20),
                                        ),
                                        backgroundColor:
                                            WidgetStateProperty.all(Colors.red),
                                        shape: WidgetStateProperty.all(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                      child: const Text(
                                        'ADD TO CART',
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
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Black',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 70),
                        Icon(
                          Icons.arrow_downward,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 0,
                          blurRadius: 2,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/Loveimg.png',
                        color: Colors.grey,
                        height: 20,
                        width: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text(
                        'H&M',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        '\$19.99',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const Text(
                    'Short black dress',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/star.png',
                        height: 13,
                        width: 13,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Image.asset(
                        'assets/images/star.png',
                        height: 13,
                        width: 13,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Image.asset(
                        'assets/images/star.png',
                        height: 13,
                        width: 13,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Image.asset(
                        'assets/images/star.png',
                        height: 13,
                        width: 13,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Image.asset(
                        'assets/images/star.png',
                        height: 13,
                        width: 13,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        '(10)',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Shoft dress in soft cotton jersey with decorative buttons down the front and a wide,frill-trimmed',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    padding: WidgetStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    ),
                    backgroundColor: WidgetStateProperty.all(Colors.red),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  child: const Text(
                    'ADD TO CART',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Shipping info',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 13),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        'Support',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 13),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    'You can also like this',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    '12 items',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: 350,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: Productlist.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final item = Productlist[index];
                    return Padding(
                      padding: const EdgeInsets.all(4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Image.asset(
                                item['image']!,
                                width: 162,
                                height: 184,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                  left: 3,
                                  bottom: 150,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 6),
                                    margin: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(1),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20),
                                        )),
                                    child: const Center(
                                      child: Text(
                                        'NEW',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/star.png',
                                    height: 13,
                                    width: 13,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset(
                                    'assets/images/star.png',
                                    height: 13,
                                    width: 13,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset(
                                    'assets/images/star.png',
                                    height: 13,
                                    width: 13,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset(
                                    'assets/images/star.png',
                                    height: 13,
                                    width: 13,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset(
                                    'assets/images/star.png',
                                    height: 13,
                                    width: 13,
                                    fit: BoxFit.cover,
                                  ),
                                  Text(
                                    '  ${item['rating']}',
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                '${item['details']}',
                                style: const TextStyle(
                                    color: Colors.grey, fontSize: 11),
                              ),
                              Text(
                                '${item['title']}',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Color:',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  Text(
                                    ' ${item['color']}',
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text(
                                    'Size:',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  Text(
                                    ' ${item['size']}',
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('${item['price']}',
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
