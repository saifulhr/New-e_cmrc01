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
        title:const Align(
          alignment: Alignment.center,
          child: Text('Short dress',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
        ) ,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/image.07.png',
            width: double.infinity,height: 540,fit: BoxFit.cover,),
          ],
        ),
      ),
    );
  }
}