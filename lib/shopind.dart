import 'package:flutter/material.dart';
import 'package:flutter_4/BuyView.dart';
import 'package:flutter_4/Gia.dart';
import 'package:flutter_4/New.dart';
import 'package:flutter_4/blackshoes.dart';

class Like extends StatefulWidget {
  const Like({super.key});

  @override
  State<Like> createState() => _LikeState();
}

class _LikeState extends State<Like> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
        Padding(
  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
  child: Container(
    height: 190,
    width: 320,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.black, width: 2),
      image: const DecorationImage(
        image: AssetImage('assets/khan.jpeg'), // Your image path
        fit: BoxFit.cover,
      ),
    ),
    child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                children: [
                const  Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 0, 0), 
                  child:  Text(
                    '50% Off',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
               const   Padding(
                    padding:  EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child:  Text(
                    'on everything today',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  const SizedBox(height: 5),
                const  Padding(
                    padding:  EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child:  Text('With code:KSCOWBLW'
                  ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const  EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child:  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const New()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: const Text(
                      'Get Now',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ),
                ],
              ),
  ),
),

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Container(
              height: 190,
              width: 160,
              padding: const EdgeInsets.all(26),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 202, 197, 197),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                ),
                border: Border.all(color: Colors.black, width: 2),
                image: const DecorationImage(
        image: AssetImage('assets/khan.jpeg'), // Your image path
        fit: BoxFit.cover,
      ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    '70% ',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    'on every',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text('With code:'),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const New()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: const Text(
                      'Get Now',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            ),
             ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Text(
                  'New Arrivals',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'View All',
                    style: TextStyle(color: Color.fromARGB(255, 191, 22, 224)),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 195,
                  width: 200,
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.circular(6),
                     ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Image.asset(
                      'assets/Jacobes.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 195,
                  width: 200,
                  padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                   
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 6,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Image.asset(
                      'assets/full.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                child: Text(
                  'The Marc Jacobs',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
                child: Text(
                  'Axel Arigato',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(55, 0, 0, 0),
                child: Text(
                  'The Medium Tote'
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Text(
                  'Clean 90 Triple Sneckers'
                ),
              ),
            ],
          ),
           const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Text(
                  '\$290.00',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 70, 0),
                child: Text(
                  '\$170.00',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Text(
                  'Popular',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'View All',
                    style: TextStyle(color: Color.fromARGB(255, 191, 22, 224)),
                  ),
                ),
              ),
            ],
          ),
        GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Gia()), // Replace `NextScreen` with your desired screen widget
    );
  },
  child: Padding(
    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
    child: Container(
      height: 80,
      width: 460,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black),
      ),
      child: Row(
        children: [
          // Image Container
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 15, 0),
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                'assets/Gia.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text Widgets
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Gia Borghini',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      'RHW Rosie 1 Sandds',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(150, 0, 0, 0),
                    child: Text(
                      '\$740.00',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.star, size: 20, color: Colors.yellow),
                  Text(' (4.5)', style: TextStyle(fontSize: 16)),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  ),
       ),
          GestureDetector(
            onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Buyview()),
    );
  },
        child:   Padding(
  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
  child: Container(
    height: 80,
    width: 460,
    padding: const EdgeInsets.all(0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.black),
    ),
    child: Row(
      children: [
        // Image Container
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(
              'assets/Blue.webp',
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Text Widgets
      const  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Water Shoes',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  
          child:   Text(
              'Amazon.come: Tabi Water Shoes',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(75, 0, 0, 0),
                 child:  Text(
              '\$590.00',
               style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
                ),
             ],
            ),
             Row(
    children: [
      Icon(Icons.star, size: 20, color: Colors.yellow),
      Text(' (4.3)', style: TextStyle(fontSize: 16)),
    ],
  ),

          ],
        ),
      ],
    ),
  ),
),
      ),
      GestureDetector(
        onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Blackshoes()),
    );
  },
        child:   Padding(
  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
  child: Container(
    height: 80,
    width: 460,
    padding: const EdgeInsets.all(0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.black),
    ),
    child: Row(
      children: [
        // Image Container
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 10, 0),
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(
              'assets/Black.webp',
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Text Widgets
      const  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Reed Black Shoes',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  
          child:   Text(
              'Reed Black Sneakers',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(160, 0, 0, 0),
                 child:  Text(
              '\$630.00',
               style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
                ),
             ],
            ),
             Row(
    children: [
      Icon(Icons.star, size: 20, color: Colors.yellow),
      Text(' (5.0)', style: TextStyle(fontSize: 16)),
    ],
  ),

          ],
        ),
      ],
    ),
  ),
),
      ),
        ],
      ),
    );
  }
}