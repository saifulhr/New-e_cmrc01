import 'package:e_cmrc/data/newlist_json.dart';
import 'package:e_cmrc/data/salelist_json.dart';
import 'package:e_cmrc/screen/home/detail/detail_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.98),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/Big Banner.png',
                  width: double.infinity,
                  height: 540,
                  fit: BoxFit.cover,
                ),
                const Positioned(
                  left: 20,
                  bottom: 140,
                  child: Text(
                    'Fashion',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const Positioned(
                    left: 20,
                    bottom: 100,
                    child: Text(
                      'Sales',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.w900),
                    )),
                Positioned(
                    left: 20,
                    bottom: 50,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all<Color>(Colors.red),
                          padding: WidgetStateProperty.all<EdgeInsets>(
                            const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 0),
                          ),
                        ),
                        child: const Text(
                          'Check',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )))
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sales',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'Supper summer sale',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    'View all',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: Salelist.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final item = Salelist[index];
                  return InkWell(
                    onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailPage()),
                    );
                  },
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Image.asset(
                                item['image']!,
                                width: 148,
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
                                        color: Colors.red.withOpacity(1),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20),
                                        )),
                                    child: const Center(
                                      child: Text(
                                        '-20%',
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
                              Row(
                                children: [
                                  Text('${item['price']}',
                                      style: const TextStyle(
                                          decoration: TextDecoration.lineThrough,
                                          color: Colors.grey)),
                                  Text('  ${item['pricees']}',
                                      style: const TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.w700)),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'You\'ve never seeb it before!',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    'View all',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 350,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: Newlist.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final item = Newlist[index];
                  return Padding(
                    padding: const EdgeInsets.all(10),
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
          ],
        ),
      ),
    );
  }
}
