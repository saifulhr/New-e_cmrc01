import 'package:flutter/material.dart';

class AddshippingPage extends StatefulWidget {
  const AddshippingPage({super.key});

  @override
  State<AddshippingPage> createState() => _AddshippingPageState();
}

class _AddshippingPageState extends State<AddshippingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.98),
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(.98),
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
          'Adding Shipping Address',
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.white.withOpacity(.2),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: .5,
                    offset: const Offset(0, .5),
                  )
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Full Name',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(.3)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.white.withOpacity(.2),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: .5,
                    offset: const Offset(0, .5),
                  )
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Address',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(.3)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.white.withOpacity(.2),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: .5,
                    offset: const Offset(0, .5),
                  )
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'City',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(.3)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.white.withOpacity(.2),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: .5,
                    offset: const Offset(0, .5),
                  )
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'State/Province/Region',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(.3)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.white.withOpacity(.2),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: .5,
                    offset: const Offset(0, .5),
                  )
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Zip Code(Postal code)',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(.3)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.white.withOpacity(.2),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: .5,
                    offset: const Offset(0, .5),
                  )
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Country',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(.3)),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                    padding: WidgetStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    ),
                    backgroundColor: const WidgetStatePropertyAll(Colors.red),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
                child: const Text(
                  'SAVE ADDRESS',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
