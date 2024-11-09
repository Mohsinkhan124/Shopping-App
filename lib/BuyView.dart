import 'package:flutter/material.dart';
import 'package:flutter_4/home.dart';

class Buyview extends StatefulWidget {
  const Buyview({super.key});

  @override
  State<Buyview> createState() => _BuyviewState();
}

class _BuyviewState extends State<Buyview> {
  int quantity = 1;
  int selectedSizeIndex = 8;
  int selectedColorIndex = 0;

  final List<String> sizes = [
    "38",
    "38.5",
    "40",
    "40.5",
    "41",
    "41.5",
    "42",
    "42.5",
    "43"
  ];
  final List<Color> colors = [
    Colors.black,
    Colors.yellow,
    Colors.blue,
    Colors.red,
    Colors.green
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeView()),
              );
            },
            child: const Icon(Icons.arrow_back, color: Colors.black),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                print('Malaamaal');
              },
              child:
                  const Icon(Icons.shopping_bag_outlined, color: Colors.black),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 300,
                  width: 600,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      image: AssetImage('assets/Blue.webp'), // Your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 10),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(20),
                          backgroundColor: Colors.white,
                        ),
                        child: const Icon(Icons.favorite_border,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Water Shoes',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 0),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Amazon.com: Tabi Water Shoes',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(130, 40),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: decrement,
                                  icon: const Icon(Icons.remove),
                                  padding: EdgeInsets.zero,
                                ),
                                Text(
                                  '$quantity',
                                  style: const TextStyle(fontSize: 15.0),
                                ),
                                IconButton(
                                  onPressed: increment,
                                  icon: const Icon(Icons.add),
                                  padding: EdgeInsets.zero,
                                ),
                              ],
                            ),
                          ),
                        ]),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.star, size: 20, color: Colors.yellow),
                            Icon(Icons.star, size: 20, color: Colors.yellow),
                            Icon(Icons.star, size: 20, color: Colors.yellow),
                            Icon(Icons.star, size: 20, color: Colors.yellow),
                            Icon(Icons.star, size: 20, color: Colors.yellow),
                            SizedBox(
                                width: 5), // Small space between stars and text
                            Text(
                              ' (270 Review)',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(60, 20, 0, 0),
                          child: Text(
                            'Availiable in stock',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 400, 100),
                        child: Text(
                          'Sizes',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 120),
                        child: Row(
                          children: List.generate(sizes.length, (index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedSizeIndex = index;
                                });
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: CircleAvatar(
                                  radius: 22,
                                  backgroundColor: selectedSizeIndex == index
                                      ? Colors.black
                                      : Colors.grey[200],
                                  child: Text(
                                    sizes[index],
                                    style: TextStyle(
                                      fontSize:
                                          15, // Smaller font size for compact look
                                      color: selectedSizeIndex == index
                                          ? const Color.fromARGB(
                                              255, 223, 218, 218)
                                          : Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: List.generate(colors.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedColorIndex = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: colors[index],
                            child: selectedColorIndex == index
                                ? const Icon(Icons.check,
                                    color: Colors.black, size: 20)
                                : null,
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text(
                    'A water shoe is a type of footwear that is typically used for activities'
                    'where the feet are likely to become wet, such as kayaking. Water shoes are usually made of mesh and have a hard sole used to prevent cuts and abrasions when walking in wet, rocky environments.'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                const  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Text(
                      '\$590.00',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(80, 20, 0, 0),
                    child: ElevatedButton(
          onPressed: () {
                Navigator.pop(context);
              },
               style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
               child: const Row(
               mainAxisSize: MainAxisSize.min, 
              children: [
               Icon(
        Icons.shopping_bag_outlined, color: Colors.white,
                ),
             SizedBox(width: 8), 
                Text("Add to cart",
                style: TextStyle(fontSize: 15,
                 fontWeight: FontWeight.bold,
                 color: Colors.white),
                ), 
               ],
            ),
       ),

                  )
                ],
              )
            ]),
      ),
    );
  }

  void increment() {
    setState(() {
      quantity++;
    });
  }

  void decrement() {
    setState(() {
      if (quantity > 1) {
        quantity--;
      }
    });
  }
}
