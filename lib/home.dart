import 'package:flutter/material.dart';
import 'package:flutter_4/shopind.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                print('Malaamaal');
              },
              child: const Icon(Icons.search_rounded, color: Colors.black),
            ),
          ),
        ],
      ),
      body: getCurrentView(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Shopping'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notification'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account'),
        ],
      ),
       drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              onDetailsPressed: () {},
              currentAccountPicture: const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2017/05/09/03/46/alberta-2297204_1280.jpg',
                ),
              ),
              accountName: const Text("Mohsin Khan"),
              accountEmail: const Text("mohsinkhantwy@gmail.com"),
            ),
    
      const Divider(),
           const ListTile(
              leading: Icon(Icons.group),
              title: Text('Profile'),
            ),
             const ListTile(
              leading: Icon(Icons.settings),
               title: Text('Setting'), 
                  ),
                 const ListTile(
                    leading: Icon(Icons.logout),
                    title: Text('Logout'),
                  )                                     
          ],
        ),
       ),
      );
    
  }

  getCurrentView() {
    if (currentIndex == 0) {
      return const Like();
    } else if (currentIndex == 1) {
      return Container(
        child: const Text('Mohsin khan'),
      );
    } else if (currentIndex == 2) {
      return Container(
        child: const Text("Assalamualaikum"),
      );
    } else if (currentIndex == 3) {
      return Container(
        child: const Text('How are you....'),
      );
    }
  }
}
